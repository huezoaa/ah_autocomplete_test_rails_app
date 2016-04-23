class PayersController < ApplicationController
  #CRUD

  def index
    @payers = Payer.all

  end


end
