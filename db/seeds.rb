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
CandidateUser.destroy_all

User.create(username:"Kristian")

Candidate.create(ballot_name: "David Trone", occupation:"Business Man",office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/DAVID_TRONE.jpg")
Candidate.create(ballot_name: "George Gluck", occupation:"Software Engineer", office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/George_Gluck.jpg")
Candidate.create(ballot_name: "Neil Parrot", occupation:"Traffic Engineer", office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/Neil_Parrott.jpg")
Candidate.create(ballot_name: "Donald Trump",occupation:"Business Man", office_name:"President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/473px-Official_Portrait_of_President_Donald_Trump.jpg")
Candidate.create(ballot_name: "Joe Biden", occupation:"Politician", office_name:"President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/Official_portrait_of_Vice_President_Joe_Biden.jpg")
Candidate.create(ballot_name: "Jo Jorgensen", occupation:"University Professor", office_name: "President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/JoJorgensen.png")
Candidate.create(ballot_name: "Howie Hawkins", occupation:"Enviornmental Activist", office_name: "President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/HowieHawkins.jpg")

Issue.create(title:"Climate Change")
Issue.create(title:"Healthcare")
Issue.create(title:"Abortion")
Issue.create(title:"Education")
Issue.create(title:"Immigration")
Issue.create(title:"Religion")
Issue.create(title:"Gun Control")

Stance.create(candidate_id:1,issue_id:1, stance_id:2)
Stance.create(candidate_id:1,issue_id:2, stance_id:2)
Stance.create(candidate_id:1,issue_id:3, stance_id:2)
Stance.create(candidate_id:1,issue_id:4, stance_id:1)
Stance.create(candidate_id:1,issue_id:5, stance_id:1)
Stance.create(candidate_id:1,issue_id:6, stance_id:2)
Stance.create(candidate_id:1,issue_id:7, stance_id:2)

Stance.create(candidate_id:2,issue_id:1, stance_id:2)
Stance.create(candidate_id:2,issue_id:2, stance_id:2)
Stance.create(candidate_id:2,issue_id:3, stance_id:2)
Stance.create(candidate_id:2,issue_id:4, stance_id:2)
Stance.create(candidate_id:2,issue_id:5, stance_id:2)
Stance.create(candidate_id:2,issue_id:6, stance_id:2)
Stance.create(candidate_id:2,issue_id:7, stance_id:2)

Stance.create(candidate_id:3,issue_id:1, stance_id:0)
Stance.create(candidate_id:3,issue_id:2, stance_id:0)
Stance.create(candidate_id:3,issue_id:3, stance_id:0)
Stance.create(candidate_id:3,issue_id:4, stance_id:1)
Stance.create(candidate_id:3,issue_id:5, stance_id:0)
Stance.create(candidate_id:3,issue_id:6, stance_id:0)
Stance.create(candidate_id:3,issue_id:7, stance_id:0)

Stance.create(candidate_id:4,issue_id:1, stance_id:0)
Stance.create(candidate_id:4,issue_id:2, stance_id:0)
Stance.create(candidate_id:4,issue_id:3, stance_id:0)
Stance.create(candidate_id:4,issue_id:4, stance_id:0)
Stance.create(candidate_id:4,issue_id:5, stance_id:1)
Stance.create(candidate_id:4,issue_id:6, stance_id:0)
Stance.create(candidate_id:4,issue_id:7, stance_id:0)

Stance.create(candidate_id:5,issue_id:1, stance_id:2)
Stance.create(candidate_id:5,issue_id:2, stance_id:2)
Stance.create(candidate_id:5,issue_id:3, stance_id:2)
Stance.create(candidate_id:5,issue_id:4, stance_id:2)
Stance.create(candidate_id:5,issue_id:5, stance_id:2)
Stance.create(candidate_id:5,issue_id:6, stance_id:2)
Stance.create(candidate_id:5,issue_id:7, stance_id:2)

Stance.create(candidate_id:6,issue_id:1, stance_id:2)
Stance.create(candidate_id:6,issue_id:2, stance_id:1)
Stance.create(candidate_id:6,issue_id:3, stance_id:2)
Stance.create(candidate_id:6,issue_id:4, stance_id:0)
Stance.create(candidate_id:6,issue_id:5, stance_id:2)
Stance.create(candidate_id:6,issue_id:6, stance_id:0)
Stance.create(candidate_id:6,issue_id:7, stance_id:0)

Stance.create(candidate_id:7,issue_id:1, stance_id:2)
Stance.create(candidate_id:7,issue_id:2, stance_id:1)
Stance.create(candidate_id:7,issue_id:3, stance_id:2)
Stance.create(candidate_id:7,issue_id:4, stance_id:2)
Stance.create(candidate_id:7,issue_id:5, stance_id:2)
Stance.create(candidate_id:7,issue_id:6, stance_id:2)
Stance.create(candidate_id:7,issue_id:7, stance_id:2)



