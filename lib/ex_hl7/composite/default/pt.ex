defmodule HL7.Composite.Default.PT do
  @moduledoc """
  16.2.53 Processing Type (PT)

  Components:
    - `processing_id` (ST)
    - `processing_mode` (ST)
  """
  use HL7.Composite.Spec

  composite do
    component :processing_id,   type: :string
    component :processing_mode, type: :string
  end
end
