defmodule HL7.Composite.Default.CWE do
  @moduledoc """
  16.2.12 CWE - coded with exceptions

  Components:

    - `identifier` (ST)
    - `text` (ST)
    - `coding_system` (IS)
    - `alt_id` (ST)
    - `alt_text` (ST)
    - `alt_coding_system` (IS)
    - `coding_system_version` (ST)
    - `alt_coding_system_version` (ST)
    - `original_text` (ST)

  """
  use HL7.Composite.Spec

  composite do
    component :id,                        type: :string
    component :text,                      type: :string
    component :coding_system,             type: :string
    component :alt_id,                    type: :string
    component :alt_text,                  type: :string
    component :alt_coding_system,         type: :string
    component :coding_system_version,     type: :string
    component :alt_coding_system_version, type: :string
    component :original_text,             type: :string
  end
end
