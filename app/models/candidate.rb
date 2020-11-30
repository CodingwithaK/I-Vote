class Candidate < ApplicationRecord
    belong_to :user
    has_many :issues, through: :stances
    

end
