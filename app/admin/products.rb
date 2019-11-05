# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_Id, :ProductName, :GroupType, :Price, :Description, :Quantity, :ProductDetails, :image, :tracklist
end
