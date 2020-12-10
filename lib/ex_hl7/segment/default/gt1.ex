defmodule HL7.Segment.GT1 do
  @moduledoc "16.7.57 GT1 - Guarantor Segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.XTN, as: XTN
  require HL7.Composite.Default.XPN, as: XPN

  segment "GT1" do
    field :set_id,                   seq:  1, type: :integer, len: 4
    field :last_name,                seq:  3, rep: 1, type: {XPN, :family_name, :surname}, len: 25
    field :first_name,               seq:  3, rep: 1, type: {XPN, :given_name}, len: 25
    field :street,                   seq:  5, rep: 1, type: {XAD, :street_address, :street_or_mailing_address}, len: 20
    field :street_name,              seq:  5, rep: 1, type: {XAD, :street_address, :street_name}, len: 20
    field :dwelling_number,          seq:  5, rep: 1, type: {XAD, :street_address, :dwelling_number}, len: 20
    field :other_designation,        seq:  5, rep: 1, type: {XAD, :other_designation}, len: 20
    field :city,                     seq:  5, rep: 1, type: {XAD, :city}, len: 30
    field :state,                    seq:  5, rep: 1, type: {XAD, :state}, len: 1
    field :postal_code,              seq:  5, rep: 1, type: {XAD, :postal_code}, len: 10
    field :country,                  seq:  5, rep: 1, type: {XAD, :country}, len: 3
    field :address_type,             seq:  5, rep: 1, type: {XAD, :address_type}, len: 1
    field :formatted_phone_number,   seq:  6, rep: 1, type: {XTN, :formatted_phone_number}, len: 199
    field :telecom_use_code,         seq:  6, rep: 1, type: {XTN, :telecom_use_code}, len: 3
    field :telecom_equipment_type,   seq:  6, rep: 1, type: {XTN, :telecom_equipment_type}, len: 8
    field :email,                    seq:  6, rep: 1, type: {XTN, :email}, len: 199
    field :country_code,             seq:  6, rep: 1, type: {XTN, :country_code}, len: 3
    field :area_code,                seq:  6, rep: 1, type: {XTN, :area_code}, len: 5
    field :phone_number,             seq:  6, rep: 1, type: {XTN, :phone_number}, len: 9
    field :extension,                seq:  6, rep: 1, type: {XTN, :extension}, len: 5
    field :any_text,                 seq:  6, rep: 1, type: {XTN, :any_text}, len: 199
  end
end
