class Stance < ApplicationRecord
    belongs_to :user , optional: true
    belongs_to :candidate , optional: true
    
end
