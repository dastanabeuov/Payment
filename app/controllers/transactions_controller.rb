# frozen_string_literal: true

class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show destroy]

  def index
    @transactions = current_user.transactions.all
  end

  def show; end

  def destroy
    @transaction.destroy

    redirect_to transactions_url, notice: 'Transaction was successfully destroyed.'
  end

  private

  def set_transaction
    @merchant = Transaction.find(params[:id])
  end
end
