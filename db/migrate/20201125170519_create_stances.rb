class CreateStances < ActiveRecord::Migration[6.0]
  def change
    create_table :stances do |t|
      t.integer "user_id"
      t.integer "candidate_id"
      t.integer "stance"
      t.integer "importance"
      t.timestamps
    end
  end
end
