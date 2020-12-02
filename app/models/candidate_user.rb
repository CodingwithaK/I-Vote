class CandidateUser < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :candidate, optional: true
    #final percentage on here
end
