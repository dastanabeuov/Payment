# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :merchant

  validates :amount, presence: true
  validates :status, presence: true
  validates :customer_email, presence: true
  validates :customer_phone, presence: true
end
