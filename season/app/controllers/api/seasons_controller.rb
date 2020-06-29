module Api
  class SeasonsController < ApplicationController
    def index
      logger.info('GET INDEX')
      render json: { message: 'success'}, status: 200
    end
  end
end