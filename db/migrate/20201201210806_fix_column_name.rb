class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :stances, :stance, :stance_id
  end
end
