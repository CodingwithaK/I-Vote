class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string "ballot_name"
      t.string "occupation"
      t.string "office_name"
      t.integer "user_id",
      t.timestamps
    end
  end
end
