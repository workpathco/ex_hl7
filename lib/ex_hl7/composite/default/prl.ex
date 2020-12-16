defmodule HL7.Composite.Default.PRL do
  @moduledoc """
  2.A.57 PRL - parent result link

  Components:

    - `observation_identifier` (CWE)
    - `observation_sub_identifier` (OG)
    - `observation_value_descriptor` (TX)
  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.CWE, as: CWE

  composite do
    component :observation_identifier,        type: CWE
    component :observation_sub_identifier,    type: :string
    component :observation_value_descriptor,  type: :string
  end
end
