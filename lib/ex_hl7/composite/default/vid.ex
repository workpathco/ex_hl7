defmodule HL7.Composite.Default.VID do
  @moduledoc """
  16.2.75 Version Identifier (VID)

  Components:
    - `Version ID` (ST)
    - `Internationalization Code` (CE)
    - `Internationalization Version ID` (CE)
  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.CE, as: CE

  composite do
    component :version_id,                      type: :string
    component :internationalization_code,       type: CE
    component :internationalization_version_id, type: CE
  end
end
