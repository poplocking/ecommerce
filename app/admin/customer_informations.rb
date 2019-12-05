# frozen_string_literal: true

ActiveAdmin.register CustomerInformation do
  permit_params :customer_id, :firstName, :lastName, :password, :address, :email, :province_id, :city, :postalCode, :phone, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
end
