defmodule HL7.Segment.Default.OBX do
  @moduledoc "7.4.2 OBX - observation/result segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.Dynamic, as: Dynamic
  require HL7.Composite.Default.SN, as: SN
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XCN, as: XCN
  require HL7.Composite.Default.XON, as: XON
  # require HL7.Segment.Default.MSH, as: MSH

  segment "OBX" do
    field :set_id,                                                                  seq:  1, type: :integer, len: 4

    field :value_type,                                                              seq:  2, type: :string, len: 10

    field :observation_id,                                                          seq:  3, type: {CWE, :id}, len: 14
    field :observation_text,                                                        seq:  3, type: {CWE, :text}, len: 14
    field :observation_coding_system,                                               seq:  3, type: {CWE, :coding_system}, len: 8
    field :observation_alt_id,                                                      seq:  3, type: {CWE, :alt_id}, len: 14
    field :observation_alt_text,                                                    seq:  3, type: {CWE, :alt_text}, len: 14
    field :observation_alt_coding_system,                                           seq:  3, type: {CWE, :alt_coding_system}, len: 8
    field :observation_coding_system_version,                                       seq:  3, type: {CWE, :coding_system_version}, len: 8
    field :observation_alt_coding_system_version,                                   seq:  3, type: {CWE, :alt_coding_system_version}, len: 8
    field :observation_original_text,                                               seq:  3, type: {CWE, :original_text}, len: 199

    field :observation_sub_id,                                                      seq:  4, type: :string, len: 20

    field :observation_value_01,                                                    seq:  5, rep: 1, type: {Dynamic, :field_01}, len: 99999
    field :observation_value_02,                                                    seq:  5, rep: 1, type: {Dynamic, :field_02}, len: 99999
    field :observation_value_03,                                                    seq:  5, rep: 1, type: {Dynamic, :field_03}, len: 99999
    field :observation_value_04,                                                    seq:  5, rep: 1, type: {Dynamic, :field_04}, len: 99999
    field :observation_value_05,                                                    seq:  5, rep: 1, type: {Dynamic, :field_05}, len: 99999
    field :observation_value_06,                                                    seq:  5, rep: 1, type: {Dynamic, :field_06}, len: 99999
    field :observation_value_07,                                                    seq:  5, rep: 1, type: {Dynamic, :field_07}, len: 99999
    field :observation_value_08,                                                    seq:  5, rep: 1, type: {Dynamic, :field_08}, len: 99999
    field :observation_value_09,                                                    seq:  5, rep: 1, type: {Dynamic, :field_09}, len: 99999
    field :observation_value_10,                                                    seq:  5, rep: 1, type: {Dynamic, :field_10}, len: 99999
    field :observation_value_11,                                                    seq:  5, rep: 1, type: {Dynamic, :field_11}, len: 99999
    field :observation_value_12,                                                    seq:  5, rep: 1, type: {Dynamic, :field_12}, len: 99999
    field :observation_value_13,                                                    seq:  5, rep: 1, type: {Dynamic, :field_13}, len: 99999
    field :observation_value_14,                                                    seq:  5, rep: 1, type: {Dynamic, :field_14}, len: 99999
    field :observation_value_15,                                                    seq:  5, rep: 1, type: {Dynamic, :field_15}, len: 99999
    field :observation_value_16,                                                    seq:  5, rep: 1, type: {Dynamic, :field_16}, len: 99999
    field :observation_value_17,                                                    seq:  5, rep: 1, type: {Dynamic, :field_17}, len: 99999
    field :observation_value_18,                                                    seq:  5, rep: 1, type: {Dynamic, :field_18}, len: 99999
    field :observation_value_19,                                                    seq:  5, rep: 1, type: {Dynamic, :field_19}, len: 99999
    field :observation_value_20,                                                    seq:  5, rep: 1, type: {Dynamic, :field_20}, len: 99999

    field :units_id,                                                                seq:  6, type: {CWE, :id}, len: 14
    field :units_text,                                                              seq:  6, type: {CWE, :text}, len: 14
    field :units_coding_system,                                                     seq:  6, type: {CWE, :coding_system}, len: 8

    field :references_range,                                                        seq:  7, type: :string, len: 60

    field :abnormal_flags,                                                          seq:  8, type: :string, len: 5

    field :observation_status,                                                      seq: 11, type: :string, len: 1

    field :observation_datetime,                                                    seq: 14, type: :datetime, len: 26

    field :responsible_observer_id,                                                 seq: 16, rep: 1, type: {XCN, :id_number}, len: 20
    field :responsible_observer_last_name,                                          seq: 16, rep: 1, type: {XCN, :family_name}, len: 25
    field :responsible_observer_first_name,                                         seq: 16, rep: 1, type: {XCN, :given_name}, len: 25
    field :responsible_observer_second_name,                                        seq: 16, rep: 1, type: {XCN, :second_name}, len: 25
    field :responsible_observer_suffix,                                             seq: 16, rep: 1, type: {XCN, :suffix}, len: 25
    field :responsible_observer_prefix,                                             seq: 16, rep: 1, type: {XCN, :prefix}, len: 25
    field :responsible_observer_professional_suffix,                                seq: 16, rep: 1, type: {XCN, :professional_suffix}, len: 25

    field :analysis_datetime,                                                       seq: 19, type: :datetime, len: 26

    field :performing_organization_name,                                            seq: 23, rep: 1, type: {XON, :organization_name}, len: 50
    field :performing_organization_type_code,                                       seq: 23, rep: 1, type: {XON, :organization_name_type_code}, len: 20
    field :performing_organization_id_number,                                       seq: 23, rep: 1, type: {XON, :id_number}, len: 4
    field :performing_organization_check_digit,                                     seq: 23, rep: 1, type: {XON, :check_digit}, len: 1
    field :performing_organization_check_digit_scheme,                              seq: 23, rep: 1, type: {XON, :check_digit_scheme}, len: 3
    field :performing_organization_assigning_authority_id,                          seq: 23, rep: 1, type: {XON, :assigning_authority, :namespace_id}, len: 20
    field :performing_organization_assigning_authority_universal_id,                seq: 23, rep: 1, type: {XON, :assigning_authority, :universal_id}, len: 199
    field :performing_organization_assigning_authority_universal_id_type,           seq: 23, rep: 1, type: {XON, :assigning_authority, :universal_id_type}, len: 6
    field :performing_organization_id_type,                                         seq: 23, rep: 1, type: {XON, :id_type}, len: 5
    field :performing_organization_assigning_facility_id,                           seq: 23, rep: 1, type: {XON, :assigning_facility, :namespace_id}, len: 20
    field :performing_organization_assigning_facility_universal_id,                 seq: 23, rep: 1, type: {XON, :assigning_facility, :universal_id}, len: 199
    field :performing_organization_assigning_facility_universal_id_type,            seq: 23, rep: 1, type: {XON, :assigning_facility, :universal_id_type}, len: 6
    field :performing_organization_representation_code,                             seq: 23, rep: 1, type: {XON, :name_representation_code}, len: 1
    field :performing_organization_organization_identifier,                         seq: 23, rep: 1, type: {XON, :organization_identifier}, len: 20

    field :performing_organization_street,                                          seq: 24, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 120
    field :performing_organization_street_name,                                     seq: 24, rep: 1, type: {XAD, :street_address, :street_name}, len: 50
    field :performing_organization_dwelling_number,                                 seq: 24, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 12
    field :performing_organization_other_designation,                               seq: 24, rep: 1, type: {XAD, :other_designation}, len: 120
    field :performing_organization_city,                                            seq: 24, rep: 1, type: {XAD, :city}, len: 50
    field :performing_organization_state,                                           seq: 24, rep: 1, type: {XAD, :state}, len: 50
    field :performing_organization_postal_code,                                     seq: 24, rep: 1, type: {XAD, :postal_code}, len: 12
    field :performing_organization_country,                                         seq: 24, rep: 1, type: {XAD, :country}, len: 3
    field :performing_organization_address_type,                                    seq: 24, rep: 1, type: {XAD, :address_type}, len: 3
    field :performing_organization_effective_date,                                  seq: 24, rep: 1, type: {XAD, :effective_date}, len: 26
    field :performing_organization_expiration_date,                                 seq: 24, rep: 1, type: {XAD, :expiration_date}, len: 26

    field :performing_organization_director_id,                                     seq: 25, rep: 1, type: {XCN, :id_number}, len: 20
    field :performing_organization_director_last_name,                              seq: 25, rep: 1, type: {XCN, :family_name}, len: 25
    field :performing_organization_director_first_name,                             seq: 25, rep: 1, type: {XCN, :given_name}, len: 25
    field :performing_organization_director_second_name,                            seq: 25, rep: 1, type: {XCN, :second_name}, len: 25
    field :performing_organization_director_suffix,                                 seq: 25, rep: 1, type: {XCN, :suffix}, len: 25
    field :performing_organization_director_prefix,                                 seq: 25, rep: 1, type: {XCN, :prefix}, len: 25
    field :performing_organization_director_id_type,                                seq: 25, rep: 1, type: {XCN, :id_type}, len: 25
    field :performing_organization_director_assigning_facility_id,                  seq: 25, rep: 1, type: {XCN, :assigning_facility, :namespace_id}, len: 25
    field :performing_organization_director_assigning_facility_universal_id,        seq: 25, rep: 1, type: {XCN, :assigning_facility, :universal_id}, len: 199
    field :performing_organization_director_assigning_facility_universal_id_type,   seq: 25, rep: 1, type: {XCN, :assigning_facility, :universal_id_type}, len: 6
    field :performing_organization_director_professional_suffix,                    seq: 25, rep: 1, type: {XCN, :professional_suffix}, len: 25
  end

  def get_value(%{value_type: "CWE"} = obx) do
    %CWE{
      id: obx.observation_value_01,
      text: obx.observation_value_02,
      coding_system: obx.observation_value_03,
      alt_id: obx.observation_value_04,
      alt_text: obx.observation_value_05,
      alt_coding_system: obx.observation_value_06,
      coding_system_version: obx.observation_value_07,
      alt_coding_system_version: obx.observation_value_08,
      original_text: obx.observation_value_09,
    }
  end

  def get_value(%{value_type: "SN"} = obx) do
    parse = fn
      value when is_binary(value) -> Float.parse(value) |> elem(0)
      value when is_number(value) -> value
      _ -> nil
    end
    %SN{
      comparator: obx.observation_value_01,
      num_1: parse.(obx.observation_value_02),
      separator: obx.observation_value_03,
      num_2: parse.(obx.observation_value_04)
    }
  end
end
