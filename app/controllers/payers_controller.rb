class PayersController < ApplicationController
  #CRUD

  def vista
    @payers = Payer.all

  end


end
