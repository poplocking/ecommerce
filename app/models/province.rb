# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :customer_informations
end
