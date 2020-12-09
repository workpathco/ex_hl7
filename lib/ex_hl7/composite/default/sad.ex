defmodule HL7.Composite.Default.SAD do
  @moduledoc """
  16.2.63 SAD - street address

  Components:
    - `steet_address` (ST)
    - `street_name` (ST)
    - `dwelling_number` (ST)
  """
  use HL7.Composite.Spec

  composite do
    component :street_or_mailing_address,  type: :string
    component :street_name,               type: :string
    component :dwelling_number,           type: :string
  end
end
