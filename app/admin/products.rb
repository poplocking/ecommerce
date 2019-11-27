# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_Id, :ProductName, :GroupType, :Price, :Description, :Quantity, :ProductDetails, :tracklist, :image, :category_id

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
