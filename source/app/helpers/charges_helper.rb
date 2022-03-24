module ChargesHelper
  def display_amount(amount, currency_symbol)
    number_to_currency(amount / 100, unit: currency_symbol)
  end
end
