defmodule HL7.Segment.Default.OBX do
  @moduledoc "7.4.2 OBX - observation/result segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XCN, as: XCN
  require HL7.Composite.Default.XON, as: XON

  segment "OBX" do
    field :set_id,                                                          seq:  1, type: :integer, len: 4

    field :value_type,                                                      seq:  2, type: :string, len: 10

    field :observation_id,                                                  seq:  3, type: {CWE, :id}, len: 14
    field :observation_text,                                                seq:  3, type: {CWE, :text}, len: 14
    field :observation_coding_system,                                       seq:  3, type: {CWE, :coding_system}, len: 8
    field :observation_alt_id,                                              seq:  3, type: {CWE, :alt_id}, len: 14
    field :observation_alt_text,                                            seq:  3, type: {CWE, :alt_text}, len: 14
    field :observation_alt_coding_system,                                   seq:  3, type: {CWE, :alt_coding_system}, len: 8
    field :observation_coding_system_version,                               seq:  3, type: {CWE, :coding_system_version}, len: 8
    field :observation_alt_coding_system_version,                           seq:  3, type: {CWE, :alt_coding_system_version}, len: 8
    field :observation_original_text,                                       seq:  3, type: {CWE, :original_text}, len: 199

    field :observation_sub_id,                                              seq:  4, type: :string, len: 20

    field :observation_value,                                               seq:  5, rep: 1, type: :string, len: 99999
    # TODO handle observation value better, its type depends on :value_type
    # field :observation_value_id,                                            seq:  5, type: {CE, :id}, len: 14
    # field :observation_value_coding_system,                                 seq:  5, type: {CE, :coding_system}, len: 8
    # field :observation_value_alt_id,                                        seq:  5, type: {CE, :alt_id}, len: 14
    # field :observation_value_alt_coding_system,                             seq:  5, type: {CE, :alt_coding_system}, len: 8

    field :units_id,                                                        seq:  6, type: {CWE, :id}, len: 14
    field :units_text,                                                      seq:  6, type: {CWE, :text}, len: 14
    field :units_coding_system,                                             seq:  6, type: {CWE, :coding_system}, len: 8

    field :references_range,                                                seq:  7, type: :string, len: 60

    field :abnormal_flags,                                                  seq:  8, type: :string, len: 5

    field :observation_result_status,                                       seq: 11, type: :string, len: 1

    field :observation_datetime,                                            seq: 14, type: :datetime, len: 26

    field :responsible_observer_id,                                         seq: 16, rep: 1, type: {XCN, :id_number}, len: 20
    field :responsible_observer_last_name,                                  seq: 16, rep: 1, type: {XCN, :family_name}, len: 25
    field :responsible_observer_first_name,                                 seq: 16, rep: 1, type: {XCN, :given_name}, len: 25
    field :responsible_observer_second_name,                                seq: 16, rep: 1, type: {XCN, :second_name}, len: 25
    field :responsible_observer_suffix,                                     seq: 16, rep: 1, type: {XCN, :suffix}, len: 25
    field :responsible_observer_prefix,                                     seq: 16, rep: 1, type: {XCN, :prefix}, len: 25
    field :responsible_observer_professional_suffix,                        seq: 16, rep: 1, type: {XCN, :professional_suffix}, len: 25

    field :analysis_datetime,                                               seq: 19, type: :datetime, len: 26

    field :performing_organization_name,                                    seq: 23, rep: 1, type: {XON, :organization_name}, len: 50
    field :performing_organization_type_code,                               seq: 23, rep: 1, type: {XON, :organization_name_type_code}, len: 20
    field :performing_organization_id_number,                               seq: 23, rep: 1, type: {XON, :id_number}, len: 4
    field :performing_organization_check_digit,                             seq: 23, rep: 1, type: {XON, :check_digit}, len: 1
    field :performing_organization_check_digit_scheme,                      seq: 23, rep: 1, type: {XON, :check_digit_scheme}, len: 3
    field :performing_organization_assigning_authority_id,                  seq: 23, rep: 1, type: {XON, :assigning_authority, :namespace_id}, len: 20
    field :performing_organization_assigning_authority_universal_id,        seq: 23, rep: 1, type: {XON, :assigning_authority, :universal_id}, len: 199
    field :performing_organization_assigning_authority_universal_id_type,   seq: 23, rep: 1, type: {XON, :assigning_authority, :universal_id_type}, len: 6
    field :performing_organization_id_type,                                 seq: 23, rep: 1, type: {XON, :id_type}, len: 5
    field :performing_organization_assigning_facility_id,                   seq: 23, rep: 1, type: {XON, :assigning_facility, :namespace_id}, len: 20
    field :performing_organization_assigning_facility_universal_id,         seq: 23, rep: 1, type: {XON, :assigning_facility, :universal_id}, len: 199
    field :performing_organization_assigning_facility_universal_id_type,    seq: 23, rep: 1, type: {XON, :assigning_facility, :universal_id_type}, len: 6
    field :performing_organization_representation_code,                     seq: 23, rep: 1, type: {XON, :name_representation_code}, len: 1
    field :performing_organization_organization_identifier,                 seq: 23, rep: 1, type: {XON, :organization_identifier}, len: 20

    field :performing_organization_street,                                  seq: 24, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 120
    field :performing_organization_street_name,                             seq: 24, rep: 1, type: {XAD, :street_address, :street_name}, len: 50
    field :performing_organization_dwelling_number,                         seq: 24, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 12
    field :performing_organization_other_designation,                       seq: 24, rep: 1, type: {XAD, :other_designation}, len: 120
    field :performing_organization_city,                                    seq: 24, rep: 1, type: {XAD, :city}, len: 50
    field :performing_organization_state,                                   seq: 24, rep: 1, type: {XAD, :state}, len: 50
    field :performing_organization_postal_code,                             seq: 24, rep: 1, type: {XAD, :postal_code}, len: 12
    field :performing_organization_country,                                 seq: 24, rep: 1, type: {XAD, :country}, len: 3
    field :performing_organization_address_type,                            seq: 24, rep: 1, type: {XAD, :address_type}, len: 3
    field :performing_organization_effective_date,                          seq: 24, rep: 1, type: {XAD, :effective_date}, len: 26
    field :performing_organization_expiration_date,                         seq: 24, rep: 1, type: {XAD, :expiration_date}, len: 26

    field :performing_organization_director_id,                             seq: 25, rep: 1, type: {XCN, :id_number}, len: 20
    field :performing_organization_director_last_name,                      seq: 25, rep: 1, type: {XCN, :family_name}, len: 25
    field :performing_organization_director_first_name,                     seq: 25, rep: 1, type: {XCN, :given_name}, len: 25
    field :performing_organization_director_second_name,                    seq: 25, rep: 1, type: {XCN, :second_name}, len: 25
    field :performing_organization_director_suffix,                         seq: 25, rep: 1, type: {XCN, :suffix}, len: 25
    field :performing_organization_director_prefix,                         seq: 25, rep: 1, type: {XCN, :prefix}, len: 25
    field :performing_organization_director_id_type,                        seq: 25, rep: 1, type: {XCN, :id_type}, len: 25
    field :performing_organization_director_assigning_facility,             seq: 25, rep: 1, type: {XCN, :assigning_facility}, len: 25
    field :performing_organization_director_professional_suffix,            seq: 25, rep: 1, type: {XCN, :professional_suffix}, len: 25
  end
end
