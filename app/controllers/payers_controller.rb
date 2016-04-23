class PayersController < ApplicationController
  #CRUD

  def index
    @payers = Payer.all
  end

  def update
    payers = Payer.update(params[:payer].keys, params[:payer].values)
    redirect_to payers_path(form: 'payer')
  end



end
