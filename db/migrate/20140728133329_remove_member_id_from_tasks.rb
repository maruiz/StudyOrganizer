class RemoveMemberIdFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :member_id
  end
end
