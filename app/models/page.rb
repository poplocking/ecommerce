# frozen_string_literal: true

class Page < ApplicationRecord
  validates :title, presence: true
  validates :permalink, presence: true
end
