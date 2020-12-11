defmodule HL7.Composite.Default.OG do
  @moduledoc """
  2.A.50 OG - observation grouper

  Components:

    - `original_sub_id` (ST)
    - `group` (NM)
    - `sequence` (NM)
    - `id` (ST)
  """
  use HL7.Composite.Spec

  composite do
    component :original_sub_id, type: :string
    component :group,           type: :integer
    component :sequence,        type: :integer
    component :id,              type: :string
  end
end
