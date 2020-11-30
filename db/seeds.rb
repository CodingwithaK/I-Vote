# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Candidate.destroy_all
Issue.destroy_all
User.destroy_all
Stance.destroy_all

User.create(username:"my_name_jeff" )
Candidate.create(ballot_name: "James Mamba", occupation:"chef",office_name:"senate")
Candidate.create(ballot_name: "Joe Schmoe", occupation:"coal miner", office_name:"senate",user_id:User.first.id)
Issue.create(title:"Climate Change Response", conservative_reform:"Loosen carbon emission restrictions", neutral_reform:"Do nothing about climate change", progressive_reform:"Climate change is an important issue and we need to increase restrictions" )
Stance.create(user_id:User.first.id, issue_id:Issue.first.id,stance:0,importance:5)
Stance.create(candidate_id:Candidate.first.id,issue_id:Issue.first.id,stance:0)