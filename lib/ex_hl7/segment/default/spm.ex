defmodule HL7.Segment.Default.SPM do
  @moduledoc "7.4.3 SPM - Specimen Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CQ, as: CQ
  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.DR, as: DR
  require HL7.Composite.Default.EIP, as: EIP

  segment "SPM" do
    field :set_id,                       seq:  1, type: :integer, len: 4
    field :placer_specimen_id,           seq:  2, type: {EIP, :placer_assigned_id, :id}, len: 199
    field :filler_specimen_id,           seq:  2, type: {EIP, :filler_assigned_id, :id}, len: 199
    field :placer_patient_id,            seq:  3, type: {EIP, :placer_assigned_id, :id}, len: 199
    field :filler_patient_id,            seq:  3, type: {EIP, :filler_assigned_id, :id}, len: 199
    field :type_id,                      seq:  4, type: {CWE, :id}, len: 20
    field :type_text,                    seq:  4, type: {CWE, :text}, len: 199
    field :type_coding_system,           seq:  4, type: {CWE, :coding_system}, len: 12
    field :type_coding_system_version,   seq:  4, type: {CWE, :coding_system_version}, len: 10
    field :collection_quanity,           seq: 12, type: {CQ, :quantity}, len: 10
    field :collection_quanity_units,     seq: 12, type: {CQ, :units, :id}, len: 10
    field :collection_start_datetime,    seq: 17, type: {DR, :start_datetime}, len: 26
    field :collection_end_datetime,      seq: 17, type: {DR, :end_datetime}, len: 26
    field :receieved_datetime,           seq: 18, type: :datetime, len: 26
  end
end
