class User < ApplicationRecord
    has_many :issues, through :stances
    has_many :candidates

end
