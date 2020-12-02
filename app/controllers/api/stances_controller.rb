class Api::StancesController < ApplicationController
    def index
        stances = Stance.all
        render json: stances, include: :candidate
    end
    def create
   
    stance = Stance.create(stance_params)
    render json: stance, methods: :individual_calculator
    end

    private
    def stance_params
        params.require(:stance).permit(:importance,:stance_id,:issue_id,:user_id)
    end
end
