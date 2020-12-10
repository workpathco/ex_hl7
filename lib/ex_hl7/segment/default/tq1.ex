defmodule HL7.Segment.Default.TQ1 do
  @moduledoc "16.7.211 TQ1 - Timing/Quantity Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  segment "TQ1" do
    field :set_id,          seq:  1, type: :integer, len: 4
    field :start_date_time, seq:  7, type: :datetime, len: 26
    field :priority,        seq:  9, type: {CWE, :id}, len: 20
  end
end
