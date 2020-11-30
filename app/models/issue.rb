class Issue < ApplicationRecord
    has_many :candidates, through: :stances
end
