defmodule HL7.Composite.Default.EIP do
  @moduledoc """
  2.A.26 EIP - entity identifier pair

  Components:
    - `placer_assigned_id` (EI)
    - `filler_assigned_id` (EI)
  """
  use HL7.Composite.Spec

  require HL7.Composite.Default.EI, as: EI

  composite do
    component :placer_assigned_id, type: EI
    component :filler_assigned_id, type: EI
  end
end
