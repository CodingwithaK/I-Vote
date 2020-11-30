class Issue < ApplicationRecord
    has_many :candidates, through: :stances
    has_many :stances
end
