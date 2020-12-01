class Api::StancesController < ApplicationController
    def index
        stances = Stance.all
        render json: stances
    end
end
