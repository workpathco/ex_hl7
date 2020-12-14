defmodule HL7.Segment.Default.OBR do
  @moduledoc "4.5.3 OBR - Observation Request Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.EI, as: EI
  require HL7.Composite.Default.EIP, as: EIP
  require HL7.Composite.Default.PRL, as: PRL
  require HL7.Composite.Default.TQ, as: TQ
  require HL7.Composite.Default.XCN, as: XCN

  segment "OBR" do
    field :set_id,                                                seq:  1, type: :integer, len: 4

    field :placer_order_id,                                       seq:  2, type: {EI, :id}, len: 20
    field :placer_order_namespace_id,                             seq:  2, type: {EI, :namespace_id}, len: 20
    field :placer_order_universal_id,                             seq:  2, type: {EI, :universal_id}, len: 20
    field :placer_order_universal_id_type,                        seq:  2, type: {EI, :universal_id_type}, len: 20

    field :filler_order_id,                                       seq:  3, type: {EI, :id}, len: 20
    field :filler_order_namespace_id,                             seq:  3, type: {EI, :namespace_id}, len: 20
    field :filler_order_universal_id,                             seq:  3, type: {EI, :universal_id}, len: 20
    field :filler_order_universal_id_type,                        seq:  3, type: {EI, :universal_id_type}, len: 20

    field :universal_service_id,                                  seq:  4,  rep: 1, type: {CWE, :id}, len: 14
    field :universal_service_text,                                seq:  4,  rep: 1, type: {CWE, :text}, len: 199
    field :universal_service_coding_system,                       seq:  4,  rep: 1, type: {CWE, :coding_system}, len: 12
    field :universal_service_alt_id,                              seq:  4,  rep: 1, type: {CWE, :alt_id}, len: 20
    field :universal_service_alt_text,                            seq:  4,  rep: 1, type: {CWE, :alt_text}, len: 199
    field :universal_service_alt_coding_system,                   seq:  4,  rep: 1, type: {CWE, :alt_coding_system}, len: 12
    field :universal_service_coding_system_version,               seq:  4,  rep: 1, type: {CWE, :coding_system_version}, len: 14
    field :universal_service_alt_coding_system_version,           seq:  4,  rep: 1, type: {CWE, :alt_coding_system_version}, len: 14
    field :universal_service_original_text,                       seq:  4,  rep: 1, type: {CWE, :original_text}, len: 199

    field :observation_datetime,                                  seq:  7, type: :datetime, len: 26

    field :specimen_action_code,                                  seq: 11, type: :string, len: 1

    field :ordering_provider_id,                                  seq: 16, rep: 1, type: {XCN, :id_number}, len: 20
    field :ordering_provider_last_name,                           seq: 16, rep: 1, type: {XCN, :family_name}, len: 25
    field :ordering_provider_first_name,                          seq: 16, rep: 1, type: {XCN, :given_name}, len: 25
    field :ordering_provider_second_name,                         seq: 16, rep: 1, type: {XCN, :second_name}, len: 25
    field :ordering_provider_suffix,                              seq: 16, rep: 1, type: {XCN, :suffix}, len: 25
    field :ordering_provider_prefix,                              seq: 16, rep: 1, type: {XCN, :prefix}, len: 25
    field :ordering_provider_authority,                           seq: 16, rep: 1, type: {XCN, :assigning_authority, :namespace_id}, len: 21
    field :ordering_provider_id_type,                             seq: 16, rep: 1, type: {XCN, :id_type}, len: 21

    field :placer_field_1,                                        seq: 18, type: :string, len: 2000

    field :placer_field_2,                                        seq: 19, type: :string, len: 2000

    field :report_datetime,                                       seq: 22, type: :datetime, len: 26

    field :result_status,                                         seq: 25, type: :string, len: 1

    field :parent_result_observation_id,                          seq: 26, type: {PRL, :observation_identifier, :id}, len: 20
    field :parent_result_observation_text,                        seq: 26, type: {PRL, :observation_identifier, :text}, len: 199
    field :parent_result_observation_coding_system,               seq: 26, type: {PRL, :observation_identifier, :coding_system}, len: 20
    field :parent_result_observation_alt_id,                      seq: 26, type: {PRL, :observation_identifier, :alt_id}, len: 20
    field :parent_result_observation_alt_text,                    seq: 26, type: {PRL, :observation_identifier, :alt_text}, len: 199
    field :parent_result_observation_alt_coding_system,           seq: 26, type: {PRL, :observation_identifier, :alt_coding_system}, len: 20
    field :parent_result_observation_sub_id,                      seq: 26, type: {PRL, :observation_sub_identifier}, len: 20

    field :quantity,                                              seq: 27, rep: 1, type: {TQ, :quantity, :quantity}, len: 16
    field :units_id,                                              seq: 27, rep: 1, type: {TQ, :quantity, :units, :id}, len: 20
    field :units_text,                                            seq: 27, rep: 1, type: {TQ, :quantity, :units, :text}, len: 199
    field :repeat_pattern,                                        seq: 27, rep: 1, type: {TQ, :interval, :repeat_pattern}, len: 8
    field :explicit_interval,                                     seq: 27, rep: 1, type: {TQ, :interval, :explicit_interval}, len: 8
    field :duration,                                              seq: 27, rep: 1, type: {TQ, :duration}, len: 8
    field :start_datetime,                                        seq: 27, rep: 1, type: {TQ, :start_datetime}, len: 26
    field :end_datetime,                                          seq: 27, rep: 1, type: {TQ, :end_datetime}, len: 26
    field :priority,                                              seq: 27, rep: 1, type: {TQ, :priority}, len: 3
    field :condition,                                             seq: 27, rep: 1, type: {TQ, :condition}, len: 199
    field :text,                                                  seq: 27, rep: 1, type: {TQ, :text}, len: 200
    field :conjunction,                                           seq: 27, rep: 1, type: {TQ, :conjunction}, len: 1
    field :seq_results_flag,                                      seq: 27, rep: 1, type: {TQ, :order_sequencing, :results_flag}, len: 1
    field :seq_placer_order_id,                                   seq: 27, rep: 1, type: {TQ, :order_sequencing, :placer_order_id}, len: 15
    field :seq_placer_order_namespace_id,                         seq: 27, rep: 1, type: {TQ, :order_sequencing, :placer_order_namespace_id}, len: 6
    field :seq_filler_order_id,                                   seq: 27, rep: 1, type: {TQ, :order_sequencing, :filler_order_id}, len: 15
    field :seq_filler_order_namespace_id,                         seq: 27, rep: 1, type: {TQ, :order_sequencing, :filler_order_namespace_id}, len: 6
    field :seq_condition,                                         seq: 27, rep: 1, type: {TQ, :order_sequencing, :condition}, len: 12
    field :seq_max_repeats,                                       seq: 27, rep: 1, type: {TQ, :order_sequencing, :max_repeats}, len: 3
    field :seq_placer_order_universal_id,                         seq: 27, rep: 1, type: {TQ, :order_sequencing, :placer_order_universal_id}, len: 15
    field :seq_placer_order_universal_id_type,                    seq: 27, rep: 1, type: {TQ, :order_sequencing, :placer_order_universal_id_type}, len: 6
    field :seq_filler_order_universal_id,                         seq: 27, rep: 1, type: {TQ, :order_sequencing, :filler_order_universal_id}, len: 15
    field :seq_filler_order_universal_id_type,                    seq: 27, rep: 1, type: {TQ, :order_sequencing, :filler_order_universal_id_type}, len: 6
    field :occurrence_duration_id,                                seq: 27, rep: 1, type: {TQ, :order_duration, :id}, len: 20
    field :occurrence_duration_text,                              seq: 27, rep: 1, type: {TQ, :order_duration, :text}, len: 199
    field :total_occurrences,                                     seq: 27, rep: 1, type: {TQ, :total_occurrences}, len: 4

    field :parent_placer_assigned_id,                             seq: 29, type: {EIP, :placer_assigned_id, :id}, len: 199
    field :parent_placer_assigned_namespace_id,                   seq: 29, type: {EIP, :placer_assigned_id, :namespace_id}, len: 199
    field :parent_placer_assigned_universal_id,                   seq: 29, type: {EIP, :placer_assigned_id, :universal_id}, len: 199
    field :parent_placer_assigned_universal_id_type,              seq: 29, type: {EIP, :placer_assigned_id, :universal_id_type}, len: 199
    field :parent_filler_assigned_id,                             seq: 29, type: {EIP, :filler_assigned_id, :id}, len: 199
    field :parent_filler_assigned_namespace_id,                   seq: 29, type: {EIP, :filler_assigned_id, :namespace_id}, len: 199
    field :parent_filler_assigned_universal_id,                   seq: 29, type: {EIP, :filler_assigned_id, :universal_id}, len: 199
    field :parent_filler_assigned_universal_id_type,              seq: 29, type: {EIP, :filler_assigned_id, :universal_id_type}, len: 199

    field :result_handling,                                       seq: 49, type: :string, len: 2

    field :parent_universal_service_id,                           seq: 50,  rep: 1, type: {CWE, :id}, len: 14
    field :parent_universal_service_text,                         seq: 50,  rep: 1, type: {CWE, :text}, len: 199
    field :parent_universal_service_coding_system,                seq: 50,  rep: 1, type: {CWE, :coding_system}, len: 12
    field :parent_universal_service_alt_id,                       seq: 50,  rep: 1, type: {CWE, :alt_id}, len: 20
    field :parent_universal_service_alt_text,                     seq: 50,  rep: 1, type: {CWE, :alt_text}, len: 199
    field :parent_universal_service_alt_coding_system,            seq: 50,  rep: 1, type: {CWE, :alt_coding_system}, len: 12
    field :parent_universal_service_coding_system_version,        seq: 50,  rep: 1, type: {CWE, :coding_system_version}, len: 14
    field :parent_universal_service_alt_coding_system_version,    seq: 50,  rep: 1, type: {CWE, :alt_coding_system_version}, len: 14
    field :parent_universal_service_original_text,                seq: 50,  rep: 1, type: {CWE, :original_text}, len: 199
  end
end
