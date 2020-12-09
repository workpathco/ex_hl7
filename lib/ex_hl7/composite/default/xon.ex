defmodule HL7.Composite.Default.XON do
  @moduledoc """
  16.2.81 XON - extended composite name and identification number for organizations

  Components:
    - `organization_name` (ST)
    - `organization_name_type_code` (IS)
    - `id_number` (NM)
    - `check_digit` (NM)
    - `check_digit_scheme` (ID)
    - `assigning_authority` (HD)
    - `id_type` (ID)
    - `assigning_facility` (HD)
    - `name_representation_code` (ID)
    - `organization_identifier` (ST)
  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.HD, as: HD

  composite do
    component :organization_name,           type: :string
    component :organization_name_type_code, type: :string
    component :id_number,                   type: :integer
    component :check_digit,                 type: :integer
    component :check_digit_scheme,          type: :string
    component :assigning_authority,         type: HD
    component :id_type,                     type: :string
    component :assigning_facility,          type: HD
    component :name_representation_code,    type: :string
    component :organization_identifier,     type: :string
  end
end
