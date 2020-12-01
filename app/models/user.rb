class User < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    
    has_many :candidate_users
    has_many :candidates, through: :candidate_users

    #   
    # def individual_calculator(importance,user_answer,candidate_answer)
    #     possible_points_for_question = importance * 5

    #     if answer == candidate_answer 
    #         points = importance * 5
    #     elsif abs(answer - candidate_answer) = 1 
    #          points = (importance/2) * 5
    #     elsif abs(answer-candidate_answer) = 2
    #         points = 0 
    # end

    # def total_points
    # end

    # def add_possible_points
    # end

    # def percentage_calculator(total_points, possible_points)
    #     percentage = (total_points/possible_points) * 100
    # end
end
