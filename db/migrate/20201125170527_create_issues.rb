class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string "title"
      t.string "conservative_reform"
      t.string "neutral_reform"
      t.string "progressive_reform"
      t.timestamps
    end
  end
end
