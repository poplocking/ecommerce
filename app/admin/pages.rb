# frozen_string_literal: true

ActiveAdmin.register Page do
  permit_params :title, :content, :permalink, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
