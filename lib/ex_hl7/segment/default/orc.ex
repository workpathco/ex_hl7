defmodule HL7.Segment.Default.ORC do
  @moduledoc "4.5.1 ORC - Common Order Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.EI, as: EI
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XCN, as: XCN
  require HL7.Composite.Default.XTN, as: XTN
  require HL7.Composite.Default.XON, as: XON

  segment "ORC" do
    field :order_control,                                       seq:  1, type: :string, len: 2

    field :placer_order_id,                                     seq:  2, type: {EI, :id}, len: 20
    field :placer_order_namespace_id,                           seq:  2, type: {EI, :namespace_id}, len: 20
    field :placer_order_universal_id,                           seq:  2, type: {EI, :universal_id}, len: 20
    field :placer_order_universal_id_type,                      seq:  2, type: {EI, :universal_id_type}, len: 20

    field :filler_order_id,                                     seq:  3, type: {EI, :id}, len: 20
    field :filler_order_namespace_id,                           seq:  3, type: {EI, :namespace_id}, len: 20
    field :filler_order_universal_id,                           seq:  3, type: {EI, :universal_id}, len: 20
    field :filler_order_universal_id_type,                      seq:  3, type: {EI, :universal_id_type}, len: 20

    field :placer_group_id,                                     seq:  4, type: {EI, :id}, len: 20
    field :placer_group_namespace_id,                           seq:  4, type: {EI, :namespace_id}, len: 20
    field :placer_group_universal_id,                           seq:  4, type: {EI, :universal_id}, len: 20
    field :placer_group_universal_id_type,                      seq:  4, type: {EI, :universal_id_type}, len: 20

    field :order_status,                                        seq:  5, type: :string, len: 2

    field :verifier_id,                                         seq: 11, rep: 1, type: {XCN, :id_number}, len: 20
    field :verifier_last_name,                                  seq: 11, rep: 1, type: {XCN, :family_name}, len: 25
    field :verifier_first_name,                                 seq: 11, rep: 1, type: {XCN, :given_name}, len: 25
    field :verifier_second_name,                                seq: 11, rep: 1, type: {XCN, :second_name}, len: 25
    field :verifier_suffix,                                     seq: 11, rep: 1, type: {XCN, :suffix}, len: 25
    field :verifier_prefix,                                     seq: 11, rep: 1, type: {XCN, :prefix}, len: 25
    field :verifier_name_id_type,                               seq: 11, rep: 1, type: {XCN, :id_type}, len: 25

    field :ordering_provider_id,                                seq: 12, rep: 1, type: {XCN, :id_number}, len: 20
    field :ordering_provider_last_name,                         seq: 12, rep: 1, type: {XCN, :family_name}, len: 25
    field :ordering_provider_first_name,                        seq: 12, rep: 1, type: {XCN, :given_name}, len: 25
    field :ordering_provider_second_name,                       seq: 12, rep: 1, type: {XCN, :second_name}, len: 25
    field :ordering_provider_suffix,                            seq: 12, rep: 1, type: {XCN, :suffix}, len: 25
    field :ordering_provider_prefix,                            seq: 12, rep: 1, type: {XCN, :prefix}, len: 25
    field :ordering_provider_id_type,                           seq: 12, rep: 1, type: {XCN, :id_type}, len: 25
    field :ordering_provider_authority,                         seq: 12, rep: 1, type: {XCN, :assigning_authority, :namespace_id}, len: 21

    field :ordering_facility_name,                              seq: 21, rep: 1, type: {XON, :organization_name}, len: 50
    field :ordering_facility_id,                                seq: 21, rep: 1, type: {XON, :organization_identifier}, len: 20

    field :ordering_facility_street,                            seq: 22, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 120
    field :ordering_facility_street_name,                       seq: 22, rep: 1, type: {XAD, :street_address, :street_name}, len: 50
    field :ordering_facility_dwelling_number,                   seq: 22, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 12
    field :ordering_facility_other_designation,                 seq: 22, rep: 1, type: {XAD, :other_designation}, len: 120
    field :ordering_facility_city,                              seq: 22, rep: 1, type: {XAD, :city}, len: 50
    field :ordering_facility_state,                             seq: 22, rep: 1, type: {XAD, :state}, len: 50
    field :ordering_facility_postal_code,                       seq: 22, rep: 1, type: {XAD, :postal_code}, len: 12
    field :ordering_facility_country,                           seq: 22, rep: 1, type: {XAD, :country}, len: 3
    field :ordering_facility_address_type,                      seq: 22, rep: 1, type: {XAD, :address_type}, len: 3
    field :ordering_facility_effective_date,                    seq: 22, rep: 1, type: {XAD, :effective_date}, len: 26
    field :ordering_facility_expiration_date,                   seq: 22, rep: 1, type: {XAD, :expiration_date}, len: 26

    field :ordering_facility_formatted_phone_number,            seq: 23, rep: 1, type: {XTN, :formatted_phone_number}, len: 199
    field :ordering_facility_telecom_use_code,                  seq: 23, rep: 1, type: {XTN, :telecom_use_code}, len: 3
    field :ordering_facility_telecom_equipment_type,            seq: 23, rep: 1, type: {XTN, :telecom_equipment_type}, len: 8
    field :ordering_facility_email,                             seq: 23, rep: 1, type: {XTN, :email}, len: 199
    field :ordering_facility_country_code,                      seq: 23, rep: 1, type: {XTN, :country_code}, len: 3
    field :ordering_facility_area_code,                         seq: 23, rep: 1, type: {XTN, :area_code}, len: 5
    field :ordering_facility_phone_number,                      seq: 23, rep: 1, type: {XTN, :phone_number}, len: 9
    field :ordering_facility_extension,                         seq: 23, rep: 1, type: {XTN, :extension}, len: 5
    field :ordering_facility_any_text,                          seq: 23, rep: 1, type: {XTN, :any_text}, len: 199

    field :parent_service_id,                                   seq: 31,  rep: 1, type: {CWE, :id}, len: 14
    field :parent_service_text,                                 seq: 31,  rep: 1, type: {CWE, :text}, len: 199
    field :parent_service_coding_system,                        seq: 31,  rep: 1, type: {CWE, :coding_system}, len: 12
    field :parent_service_alt_id,                               seq: 31,  rep: 1, type: {CWE, :alt_id}, len: 20
    field :parent_service_alt_text,                             seq: 31,  rep: 1, type: {CWE, :alt_text}, len: 199
    field :parent_service_alt_coding_system,                    seq: 31,  rep: 1, type: {CWE, :alt_coding_system}, len: 12
    field :parent_service_coding_system_version,                seq: 31,  rep: 1, type: {CWE, :coding_system_version}, len: 14
    field :parent_service_alt_coding_system_version,            seq: 31,  rep: 1, type: {CWE, :alt_coding_system_version}, len: 14
    field :parent_service_original_text,                        seq: 31,  rep: 1, type: {CWE, :original_text}, len: 14
  end
end
