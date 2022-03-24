class Charge < ApplicationRecord
  SYMBOLS = {
    usd: '$'
  }.freeze

  belongs_to :customer

  scope :success, -> { where(paid: true, refunded: false) }
  scope :failed, -> { where(paid: false) }
  scope :disputed, -> { where(refunded: true) }

  def currency_symbol
    SYMBOLS[currency.to_sym]
  end
end
