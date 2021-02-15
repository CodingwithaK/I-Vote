class Stance < ApplicationRecord
    belongs_to :user , optional: true
    belongs_to :candidate , optional: true
    belongs_to :issue

    def validate_submissions
        user_made_stances = []
      
        user_made_stances << Stance.where(user_id:user.id)
        if user_made_stances[0].length >= 7
           
            user.candidate_calcs
        else
            puts "not enough submissions"
        end
       end
end
