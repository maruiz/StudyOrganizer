class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :course_id
      t.string :type
      t.datetime :due_date
      t.integer :estimated_score

      t.timestamps
    end
  end
end
