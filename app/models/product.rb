# frozen_string_literal: true

class Product < ApplicationRecord
  has_one_attached :image
  validates :ProductName, presence: true
  validates :Price, presence: true
  validates :GroupType, presence: true
end
