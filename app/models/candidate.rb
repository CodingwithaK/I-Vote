class Candidate < ApplicationRecord
    belongs_to :user , optional: true
    has_many :issues, through: :stances
    has_many :stances

end
