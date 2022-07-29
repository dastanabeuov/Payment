# frozen_string_literal: true

class Merchant < User
  validates :name, presence: true
  validates :description, presence: true
end
