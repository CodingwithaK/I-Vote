class Api::CandidatesController < ApplicationController
    def index
        candidates = Candidate.all
        render json: candidates, include: [:stances,:issues]
    end
end
