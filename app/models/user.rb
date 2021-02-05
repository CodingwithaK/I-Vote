class User < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    
    has_many :candidate_users
    has_many :candidates, through: :candidate_users

    has_secure_password
    validates :username, uniqueness: {case_sensetive: false}

  

        def candidate_calcs
            
            
            candidates = []
            candidates << Candidate.all
            issues = []
            issues << Issue.all
            candidates[0].each do |candidate|
                
              
                puts candidate.id
                @total_points = 0 
                
                @total_possible_points = 0
                

                c_id = candidate.id
                
                    issues[0].each do |issue|
                     
                        puts issue.id
                        candidate_stance = Stance.find_by(issue_id:issue.id,candidate_id:c_id)
                        if !candidate_stance 
                            byebug
                        end
                        user_stance = Stance.find_by(issue_id:issue.id,user_id:1)
                        importance = user_stance.importance
                        candidate_answer = candidate_stance.stance_id
                        user_answer = user_stance.stance_id
                        individual_issue_calculator(importance,candidate_answer,user_answer,@total_points,@total_possible_points)
                    end

            percentage = (@total_points.to_f/@total_possible_points.to_f) * 100
            puts @total_points
            puts @total_possible_points
            puts percentage
        
            
            CandidateUser.create(candidate_id:c_id,user_id:1,percentage:percentage)
            
            end
        end

        def individual_issue_calculator(importance,user_answer,candidate_answer,total_points,total_possible_points)
            if importance != 0
                possible_points = importance * 5
            else
                possible_points = 1
            end
        

            if user_answer == candidate_answer 
                points = possible_points
            elsif user_answer - candidate_answer == 1 || user_answer - candidate_answer == -1
                points = possible_points.to_f/2
            elsif user_answer-candidate_answer == 2 || user_answer - candidate_answer == -2
                points = 0
            end 
            
            single_issue_percentage = (points.to_f/possible_points.to_f)*100
            
            @total_points += points
            
            @total_possible_points += possible_points

        end

  
   

end
