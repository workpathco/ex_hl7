defmodule HL7.Segment.Default.ORC do
  @moduledoc "4.5.1 ORC - Common Order Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.EI, as: EI
  require HL7.Composite.Default.XCN, as: XCN

  segment "ORC" do
    field :order_control,                 seq:  1, type: :string, len: 2
    field :place_order_id,                seq:  2, type: {EI, :id}, len: 20
    field :place_order_namespace_id,      seq:  2, type: {EI, :namespace_id}, len: 20
    field :place_order_universal_id,      seq:  2, type: {EI, :universal_id}, len: 20
    field :place_order_universal_id_type, seq:  2, type: {EI, :universal_id_type}, len: 20
    field :verifier_id,                   seq: 11, rep: 1, type: {XCN, :id_number}, len: 20
    field :verifier_last_name,            seq: 11, rep: 1, type: {XCN, :family_name}, len: 25
    field :verifier_first_name,           seq: 11, rep: 1, type: {XCN, :given_name}, len: 25
    field :verifier_authority,            seq: 11, rep: 1, type: {XCN, :assigning_authority, :namespace_id}, len: 21
    field :ordering_provider_id,          seq: 12, rep: 1, type: {XCN, :id_number}, len: 20
    field :ordering_provider_last_name,   seq: 12, rep: 1, type: {XCN, :family_name}, len: 25
    field :ordering_provider_first_name,  seq: 12, rep: 1, type: {XCN, :given_name}, len: 25
    field :ordering_provider_authority,   seq: 12, rep: 1, type: {XCN, :assigning_authority, :namespace_id}, len: 21
  end
end
