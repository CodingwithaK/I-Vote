class Candidate < ApplicationRecord

    has_many :candidate_users
    has_many :users, through: :candidate_users
    
    has_many :stances
    has_many :issues, through: :stances

end
