module Api
  class SeasonsController < ApplicationController
    def index
      logger.info('GET INDEX')
      render json: { message: 'success'}, status: 200
    end

    def current
      logger.info('GET CURRENT')
      render json: { season: { id: 1, year: '2020' } }, status: 200
    end
  end
end