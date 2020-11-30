class Api::CandidatesController < ApplicationController
    def index
        candidates = Candidates.all
        render json: candidates
    end
end
