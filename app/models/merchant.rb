# frozen_string_literal: true

class Merchant < User
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
