class CreateCandidateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_users do |t|
      t.integer "user_id"
      t.integer "candidate_id"
      t.timestamps
    end
  end
end
