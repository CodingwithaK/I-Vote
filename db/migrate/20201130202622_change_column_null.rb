class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :stances, :user_id, 0
    change_column_null :stances, :candidate_id, 0
    change_column_null :candidates, :user_id, 0
  end
end
