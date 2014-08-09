class User::PaymentOption < ActiveRecord::Base
  belongs_to :user

  validates :type, inclusion: { in: %w(User::BitcoinPaymentOption User::DebitPaymentOption) }
  attr_accessor :card_token

  def product_project
  end
end