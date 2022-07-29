# frozen_string_literal: true

class MerchantsController < ApplicationController
  before_action :set_merchant, only: %i[show destroy]

  def index
    @merchants = Merchant.all
  end

  def show; end

  def destroy
    @merchant.destroy

    redirect_to merchants_url, notice: 'Merchant was successfully destroyed.'
  end

  private

  def set_merchant
    @merchant = Merchant.find(params[:id])
  end
end
