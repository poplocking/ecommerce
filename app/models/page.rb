# frozen_string_literal: true

class Page < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :permalink, presence: true
end
