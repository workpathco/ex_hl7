defmodule HL7.Composite.Default.SN do
  @moduledoc """
  2.A.71 SN - structured numeric

  Components:

    - `comparator` (ST)
    - `num_1` (NM)
    - `separator` (ST)
    - `num_2` (NM)
  """
  use HL7.Composite.Spec

  composite do
    component :comparator,  type: :string
    component :num_1,       type: :integer
    component :separator,   type: :string
    component :num_2,       type: :integer
  end
end
