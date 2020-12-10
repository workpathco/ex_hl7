defmodule HL7.Composite do
  @moduledoc "Generic functions used by HL7 composite field macros"

  @type spec :: {name :: atom, HL7.Type.value_type() | module}
  @type option ::
          {:separators, [{key :: atom, separator :: byte}]}
          | {:trim, boolean}

  @callback spec(atom) :: {index :: pos_integer, HL7.Type.value_type() | module}

  @doc """
  Given a tuple representing the declaration of a component or subcomponent of a field, return a
  tuple with the corresponding list of indexes (1-based) for the item in the composite and its type.

  The function will raise an exception if any of the passed component or subcomponent key names
  are invalid.

  ## Examples

      alias HL7.Composite.Default.{CE, CP, CX}
      alias HL7.Composite

      iex> Composite.spec!({CE, :text})
      {{2}, :string}
      iex> Composite.spec!({CX, :effective_date})
      {{7}, :date}
      iex> Composite.spec!({CP, :price, :quantity})
      {{1, 1}, :float}
      iex> Composite.spec!({CP, :price, :denomination})
      {{1, 2}, :string}

  """
  def spec!(composite) when is_tuple(composite) do
    root = elem(composite, 0)
    Tuple.delete_at(composite, 0)
    |> Tuple.to_list()
    |> Enum.reduce({{}, root}, fn key, {indexes, type} when is_atom(type) ->
        {index, type} = item_spec!(type, key)
        indexes = Tuple.append(indexes, index)
        {indexes, type}
    end)
  end

  defp item_spec!(composite_mod, item_key) do
    composite_mod
    |> apply(:spec, [])
    |> item_spec(item_key, 1)
    |> case do
      result = {_index, _type} ->
        result

      nil ->
        raise ArgumentError,
              "could not find element '#{inspect(item_key)}' in " <>
                "composite #{inspect(composite_mod)}"
    end
  end

  defp item_spec([{key, type} | tail], item_key, index) do
    case item_key do
      ^key -> {index, type}
      _ -> item_spec(tail, item_key, index + 1)
    end
  end

  defp item_spec([], _item_key, _index) do
    nil
  end
end
