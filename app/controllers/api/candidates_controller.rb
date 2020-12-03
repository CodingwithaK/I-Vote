class Api::CandidatesController < ApplicationController
    def index
        candidates = Candidate.all
        render json: candidates, include: [:candidate_users]
    end
end
