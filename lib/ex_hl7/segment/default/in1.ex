defmodule HL7.Segment.Default.IN1 do
  @moduledoc "6.5.6 IN1 - insurance segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CE, as: CE
  require HL7.Composite.Default.CM_IN1_14, as: CM_IN1_14
  require HL7.Composite.Default.CX, as: CX
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XON, as: XON
  require HL7.Composite.Default.XPN, as: XPN
  require HL7.Composite.Default.XTN, as: XTN

  segment "IN1" do
    field :set_id,                                                         seq:  1, type: :integer, len: 4

    field :plan_id,                                                        seq:  2, type: {CE, :id}, len: 20
    field :plan_name,                                                      seq:  2, type: {CE, :text}, len: 30

    field :company_id,                                                     seq:  3, rep: 1, type: {CX, :id}, len: 6
    field :company_assigning_authority_id,                                 seq:  3, rep: 1, type: {CX, :assigning_authority, :namespace_id}, len: 10
    field :company_id_type,                                                seq:  3, rep: 1, type: {CX, :id_type}, len: 10

    field :company_name,                                                   seq:  4, rep: 1, type: {XON, :organization_name}, len: 50
    field :company_name_type_code,                                         seq:  4, rep: 1, type: {XON, :organization_name_type_code}, len: 20
    field :company_name_id_number,                                         seq:  4, rep: 1, type: {XON, :id_number}, len: 4
    field :company_name_check_digit,                                       seq:  4, rep: 1, type: {XON, :check_digit}, len: 1
    field :company_name_check_digit_scheme,                                seq:  4, rep: 1, type: {XON, :check_digit_scheme}, len: 3
    field :company_name_assigning_authority_id,                            seq:  4, rep: 1, type: {XON, :assigning_authority, :namespace_id}, len: 20
    field :company_name_assigning_authority_universal_id,                  seq:  4, rep: 1, type: {XON, :assigning_authority, :universal_id}, len: 199
    field :company_name_assigning_authority_universal_id_type,             seq:  4, rep: 1, type: {XON, :assigning_authority, :universal_id_type}, len: 6
    field :company_name_id_type,                                           seq:  4, rep: 1, type: {XON, :id_type}, len: 5
    field :company_name_assigning_facility_id,                             seq:  4, rep: 1, type: {XON, :assigning_facility, :namespace_id}, len: 20
    field :company_name_assigning_facility_universal_id,                   seq:  4, rep: 1, type: {XON, :assigning_facility, :universal_id}, len: 199
    field :company_name_assigning_facility_universal_id_type,              seq:  4, rep: 1, type: {XON, :assigning_facility, :universal_id_type}, len: 6
    field :company_name_representation_code,                               seq:  4, rep: 1, type: {XON, :name_representation_code}, len: 1
    field :company_name_organization_identifier,                           seq:  4, rep: 1, type: {XON, :organization_identifier}, len: 20

    field :company_street,                                                 seq:  5, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 120
    field :company_street_name,                                            seq:  5, rep: 1, type: {XAD, :street_address, :street_name}, len: 50
    field :company_dwelling_number,                                        seq:  5, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 12
    field :company_other_designation,                                      seq:  5, rep: 1, type: {XAD, :other_designation}, len: 120
    field :company_city,                                                   seq:  5, rep: 1, type: {XAD, :city}, len: 50
    field :company_state,                                                  seq:  5, rep: 1, type: {XAD, :state}, len: 50
    field :company_postal_code,                                            seq:  5, rep: 1, type: {XAD, :postal_code}, len: 12
    field :company_country,                                                seq:  5, rep: 1, type: {XAD, :country}, len: 3
    field :company_address_type,                                           seq:  5, rep: 1, type: {XAD, :address_type}, len: 3
    field :company_effective_date,                                         seq:  5, rep: 1, type: {XAD, :effective_date}, len: 26
    field :company_expiration_date,                                        seq:  5, rep: 1, type: {XAD, :expiration_date}, len: 26

    field :formatted_phone_number,                                         seq:  7, rep: 1, type: {XTN, :formatted_phone_number}, len: 199
    field :telecom_use_code,                                               seq:  7, rep: 1, type: {XTN, :telecom_use_code}, len: 3
    field :telecom_equipment_type,                                         seq:  7, rep: 1, type: {XTN, :telecom_equipment_type}, len: 8
    field :email,                                                          seq:  7, rep: 1, type: {XTN, :email}, len: 199
    field :country_code,                                                   seq:  7, rep: 1, type: {XTN, :country_code}, len: 3
    field :area_code,                                                      seq:  7, rep: 1, type: {XTN, :area_code}, len: 5
    field :phone_number,                                                   seq:  7, rep: 1, type: {XTN, :phone_number}, len: 9
    field :extension,                                                      seq:  7, rep: 1, type: {XTN, :extension}, len: 5
    field :any_text,                                                       seq:  7, rep: 1, type: {XTN, :any_text}, len: 199

    field :group_number,                                                   seq:  8, type: :string, len: 12

    field :insureds_group_emp_name,                                        seq: 11, rep: 1, type: {XON, :organization_name}, len: 50
    field :insureds_group_emp_type_code,                                   seq: 11, rep: 1, type: {XON, :organization_name_type_code}, len: 20
    field :insureds_group_emp_id_number,                                   seq: 11, rep: 1, type: {XON, :id_number}, len: 4
    field :insureds_group_emp_check_digit,                                 seq: 11, rep: 1, type: {XON, :check_digit}, len: 1
    field :insureds_group_emp_check_digit_scheme,                          seq: 11, rep: 1, type: {XON, :check_digit_scheme}, len: 3
    field :insureds_group_emp_assigning_authority_id,                      seq: 11, rep: 1, type: {XON, :assigning_authority, :namespace_id}, len: 20
    field :insureds_group_emp_assigning_authority_universal_id,            seq: 11, rep: 1, type: {XON, :assigning_authority, :universal_id}, len: 199
    field :insureds_group_emp_assigning_authority_universal_id_type,       seq: 11, rep: 1, type: {XON, :assigning_authority, :universal_id_type}, len: 6
    field :insureds_group_emp_id_type,                                     seq: 11, rep: 1, type: {XON, :id_type}, len: 5
    field :insureds_group_emp_assigning_facility_id,                       seq: 11, rep: 1, type: {XON, :assigning_facility, :namespace_id}, len: 20
    field :insureds_group_emp_assigning_facility_universal_id,             seq: 11, rep: 1, type: {XON, :assigning_facility, :universal_id}, len: 199
    field :insureds_group_emp_assigning_facility_universal_id_type,        seq: 11, rep: 1, type: {XON, :assigning_facility, :universal_id_type}, len: 6
    field :insureds_group_emp_representation_code,                         seq: 11, rep: 1, type: {XON, :name_representation_code}, len: 1
    field :insureds_group_emp_organization_identifier,                     seq: 11, rep: 1, type: {XON, :organization_identifier}, len: 20

    field :authorization_number,                                           seq: 14, type: {CM_IN1_14, :number}, len: 20
    field :authorization_date,                                             seq: 14, type: {CM_IN1_14, :date}, len: 8

    field :insureds_last_name,                                             seq: 16, rep: 1, type: {XPN, :family_name, :surname}, len: 25
    field :insureds_first_name,                                            seq: 16, rep: 1, type: {XPN, :given_name}, len: 25

    field :insureds_relationship_to_patient_id,                            seq: 17, type: {CE, :id}, len: 20
    field :insureds_relationship_to_patient_name,                          seq: 17, type: {CE, :text}, len: 199

    field :insureds_street,                                                seq: 19, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 120
    field :insureds_street_name,                                           seq: 19, rep: 1, type: {XAD, :street_address, :street_name}, len: 50
    field :insureds_dwelling_number,                                       seq: 19, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 12
    field :insureds_other_designation,                                     seq: 19, rep: 1, type: {XAD, :other_designation}, len: 120
    field :insureds_city,                                                  seq: 19, rep: 1, type: {XAD, :city}, len: 50
    field :insureds_state,                                                 seq: 19, rep: 1, type: {XAD, :state}, len: 50
    field :insureds_postal_code,                                           seq: 19, rep: 1, type: {XAD, :postal_code}, len: 12
    field :insureds_country,                                               seq: 19, rep: 1, type: {XAD, :country}, len: 3
    field :insureds_address_type,                                          seq: 19, rep: 1, type: {XAD, :address_type}, len: 3
    field :insureds_effective_date,                                        seq: 19, rep: 1, type: {XAD, :effective_date}, len: 26
    field :insureds_expiration_date,                                       seq: 19, rep: 1, type: {XAD, :expiration_date}, len: 26

    field :company_plan_code,                                              seq: 35, type: :string, len: 8

    field :policy_number,                                                  seq: 36, type: :string, len: 20

    field :coverage_type,                                                  seq: 47, type: :string, len: 3
  end
end
