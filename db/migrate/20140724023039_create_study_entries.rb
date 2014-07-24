class CreateStudyEntries < ActiveRecord::Migration
  def change
    create_table :study_entries do |t|
      t.datetime :start
      t.datetime :end
      t.integer :task_id

      t.timestamps
    end
  end
end
