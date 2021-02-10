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

User.create(id:1, username:"Kristian", password:"password")

Candidate.create(id:1,ballot_name: "David Trone", occupation:"Business Man",office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/DAVID_TRONE.jpg")
Candidate.create(id:2,ballot_name: "George Gluck", occupation:"Software Engineer", office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/George_Gluck.jpg")
Candidate.create(id:3,ballot_name: "Neil Parrot", occupation:"Traffic Engineer", office_name:"House Representative",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/Neil_Parrott.jpg")
Candidate.create(id:4,ballot_name: "Donald Trump",occupation:"Business Man", office_name:"President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/473px-Official_Portrait_of_President_Donald_Trump.jpg")
Candidate.create(id:5,ballot_name: "Joe Biden", occupation:"Politician", office_name:"President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/Official_portrait_of_Vice_President_Joe_Biden.jpg")
Candidate.create(id:6,ballot_name: "Jo Jorgensen", occupation:"University Professor", office_name: "President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/JoJorgensen.png")
Candidate.create(id:7,ballot_name: "Howie Hawkins", occupation:"Enviornmental Activist", office_name: "President",img:"https://s3.amazonaws.com/ballotpedia-api4/files/thumbs/200/300/HowieHawkins.jpg")

Issue.create(id:1,title:"Climate Change")
Issue.create(id:2,title:"Healthcare")
Issue.create(id:3,title:"Abortion")
Issue.create(id:4,title:"Education")
Issue.create(id:5,title:"Immigration")
Issue.create(id:6,title:"Religion")
Issue.create(id:7,title:"Gun Control")

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



