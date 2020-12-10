defmodule HL7.Segment.Default.OBX do
  @moduledoc "7.4.2 OBX - observation/result segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CE, as: CE

  segment "OBX" do
    field :set_id,                          seq:  1, type: :integer, len: 4
    field :value_type,                      seq:  2, type: :string, len: 10
    field :observation_id,                  seq:  3, type: {CE, :id}, len: 14
    field :observation_coding_system,       seq:  3, type: {CE, :coding_system}, len: 8
    field :observation_alt_id,              seq:  3, type: {CE, :alt_id}, len: 14
    field :observation_alt_text,            seq:  3, type: {CE, :alt_text}, len: 14
    field :observation_alt_coding_system,   seq:  3, type: {CE, :alt_coding_system}, len: 8
    field :observation_sub_id,              seq:  4, type: :string, len: 20
    field :observation_value_1,             seq:  5, rep: 1, type: :string, len: 99999
    field :observation_value_2,             seq:  5, rep: 2, type: :string, len: 99999
    # TODO handle observation value better, its type depends on :value_type
    # field :observation_value_id,                seq:  5, type: {CE, :id}, len: 14
    # field :observation_value_coding_system,     seq:  5, type: {CE, :coding_system}, len: 8
    # field :observation_value_alt_id,            seq:  5, type: {CE, :alt_id}, len: 14
    # field :observation_value_alt_coding_system, seq:  5, type: {CE, :alt_coding_system}, len: 8
    field :observation_status,              seq: 11, type: :string, len: 1

end
