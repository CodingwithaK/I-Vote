class User < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    
    has_many :candidate_users
    has_many :candidates, through: :candidate_users


end
