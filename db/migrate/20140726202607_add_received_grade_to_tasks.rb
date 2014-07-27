class AddReceivedGradeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :received_grade, :string, {limit: 1}
  end
end
