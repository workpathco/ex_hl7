defmodule HL7.Composite.Default.VID do
  @moduledoc """
  2.A.83 Version Identifier (VID)

  Components:
    - `version_id` (ST)
    - `internationalization_code` (CE)
    - `internationalization_version_id` (CE)
  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.CE, as: CE

  composite do
    component :version_id,                      type: :string
    component :internationalization_code,       type: CE
    component :internationalization_version_id, type: CE
  end
end
