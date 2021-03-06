defmodule HL7.Segment.Default.PID do
  @moduledoc "3.4.2 PID - patient identification segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CWE, as: CWE
  require HL7.Composite.Default.CX, as: CX
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XTN, as: XTN
  require HL7.Composite.Default.XPN, as: XPN

  segment "PID" do
    field :set_id,                                          seq:  1,  type: :integer, len: 4
    field :patient_id_external,                             seq:  2,  type: {CX, :id}, len: 20
    field :assigning_authority_id_external,                 seq:  2,  type: {CX, :assigning_authority, :namespace_id}, len: 6
    field :assigning_authority_universal_id_external,       seq:  2,  type: {CX, :assigning_authority, :universal_id}, len: 6
    field :assigning_authority_universal_id_type_external,  seq:  2,  type: {CX, :assigning_authority, :universal_id_type}, len: 10
    field :patient_id,                                      seq:  3,  rep: 1, type: {CX, :id}, len: 20
    field :assigning_authority_id,                          seq:  3,  rep: 1, type: {CX, :assigning_authority, :namespace_id}, len: 6
    field :assigning_authority_universal_id,                seq:  3,  rep: 1, type: {CX, :assigning_authority, :universal_id}, len: 6
    field :assigning_authority_universal_id_type,           seq:  3,  rep: 1, type: {CX, :assigning_authority, :universal_id_type}, len: 10
    field :id_type,                                         seq:  3,  rep: 1, type: {CX, :id_type}, len: 2
    field :patient_document_id,                             seq:  3,  rep: 2, type: {CX, :id}, len: 20
    field :patient_document_id_type,                        seq:  3,  rep: 2, type: {CX, :id_type}, len: 2
    field :last_name,                                       seq:  5,  rep: 1, type: {XPN, :family_name, :surname}, len: 25
    field :first_name,                                      seq:  5,  rep: 1, type: {XPN, :given_name}, len: 25
    field :second_name,                                     seq:  5,  rep: 1, type: {XPN, :second_name}, len: 25
    field :suffix,                                          seq:  5,  rep: 1, type: {XPN, :suffix}, len: 25
    field :prefix,                                          seq:  5,  rep: 1, type: {XPN, :prefix}, len: 25
    field :name_type_code,                                  seq:  5,  rep: 1, type: {XPN, :name_type_code}, len: 25
    field :date_of_birth,                                   seq:  7,  type: :datetime, len: 14
    field :administrative_sex,                              seq:  8,  type: :string, len: 1
    field :race_id,                                         seq: 10,  rep: 1, type: {CWE, :id}, len: 14
    field :race_text,                                       seq: 10,  rep: 1, type: {CWE, :text}, len: 199
    field :race_coding_system,                              seq: 10,  rep: 1, type: {CWE, :coding_system}, len: 12
    field :race_alt_id,                                     seq: 10,  rep: 1, type: {CWE, :alt_id}, len: 20
    field :race_alt_text,                                   seq: 10,  rep: 1, type: {CWE, :alt_text}, len: 199
    field :race_alt_coding_system,                          seq: 10,  rep: 1, type: {CWE, :alt_coding_system}, len: 12
    field :race_coding_system_version,                      seq: 10,  rep: 1, type: {CWE, :coding_system_version}, len: 14
    field :race_alt_coding_system_version,                  seq: 10,  rep: 1, type: {CWE, :alt_coding_system_version}, len: 14
    field :race_original_text,                              seq: 10,  rep: 1, type: {CWE, :original_text}, len: 199
    field :street,                                          seq: 11,  rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 20
    field :street_name,                                     seq: 11,  rep: 1, type: {XAD, :street_address, :street_name}, len: 20
    field :dwelling_number,                                 seq: 11,  rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 20
    field :other_designation,                               seq: 11,  rep: 1, type: {XAD, :other_designation}, len: 20
    field :city,                                            seq: 11,  rep: 1, type: {XAD, :city}, len: 30
    field :state,                                           seq: 11,  rep: 1, type: {XAD, :state}, len: 1
    field :postal_code,                                     seq: 11,  rep: 1, type: {XAD, :postal_code}, len: 10
    field :country,                                         seq: 11,  rep: 1, type: {XAD, :country}, len: 3
    field :address_type,                                    seq: 11,  rep: 1, type: {XAD, :address_type}, len: 1
    field :county,                                          seq: 11,  rep: 1, type: {XAD, :county}, len: 1
    field :formatted_phone_number,                          seq: 13,  rep: 1, type: {XTN, :formatted_phone_number}, len: 199
    field :telecom_use_code,                                seq: 13,  rep: 1, type: {XTN, :telecom_use_code}, len: 3
    field :telecom_equipment_type,                          seq: 13,  rep: 1, type: {XTN, :telecom_equipment_type}, len: 8
    field :email,                                           seq: 13,  rep: 1, type: {XTN, :email}, len: 199
    field :country_code,                                    seq: 13,  rep: 1, type: {XTN, :country_code}, len: 3
    field :area_code,                                       seq: 13,  rep: 1, type: {XTN, :area_code}, len: 5
    field :phone_number,                                    seq: 13,  rep: 1, type: {XTN, :phone_number}, len: 9
    field :extension,                                       seq: 13,  rep: 1, type: {XTN, :extension}, len: 5
    field :any_text,                                        seq: 13,  rep: 1, type: {XTN, :any_text}, len: 199
  end
end
