defmodule HL7.Composite.Default.Dynamic do
  @moduledoc """
  Generic component to use with fields that can change
  all fields are string and may need to be parsed

  Components:

    - `field_01` (ST)
    - `field_02` (ST)
    - `field_03` (IS)
    - `field_04` (ST)
    - `field_05` (ST)
    - `field_06` (IS)
    - `field_07` (ST)
    - `field_08` (ST)
    - `field_09` (ST)
    - `field_10` (ST)
    - `field_11` (ST)
    - `field_12` (ST)
    - `field_13` (ST)
    - `field_14` (ST)
    - `field_15` (ST)
    - `field_16` (ST)
    - `field_17` (ST)
    - `field_18` (ST)
    - `field_19` (ST)
    - `field_20` (ST)

  """
  use HL7.Composite.Spec

  composite do
    component :field_01, type: :string
    component :field_02, type: :string
    component :field_03, type: :string
    component :field_04, type: :string
    component :field_05, type: :string
    component :field_06, type: :string
    component :field_07, type: :string
    component :field_08, type: :string
    component :field_09, type: :string
    component :field_10, type: :string
    component :field_11, type: :string
    component :field_12, type: :string
    component :field_13, type: :string
    component :field_14, type: :string
    component :field_15, type: :string
    component :field_16, type: :string
    component :field_17, type: :string
    component :field_18, type: :string
    component :field_19, type: :string
    component :field_20, type: :string
  end
end
