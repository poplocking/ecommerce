# frozen_string_literal: true

ActiveAdmin.register CustomerInformation do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :customer_id, :firstName, :lastName, :password, :address, :email, :city, :postalCode, :phone, :provinces_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:customer_id, :firstName, :lastName, :password, :address, :email, :city, :province, :postalCode, :phone, :Provinces_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
