class Stance < ApplicationRecord
    belongs_to :user
    belongs_to :candidate
end
