class ChargesController < ApplicationController
  # GET /charges or /charges.json
  def index
    @charges = Charge.all.includes(:customer)
  end
end
