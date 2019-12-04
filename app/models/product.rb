# frozen_string_literal: true

class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :category
  # validates :ProductName, presence: true
  # validates :Price, presence: true
  # validates :Description, presence: true
  # validates :ProductDetails, presence: true
  # validates :tracklist, presence: true
end
