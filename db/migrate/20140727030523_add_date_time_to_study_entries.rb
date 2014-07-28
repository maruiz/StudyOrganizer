class AddDateTimeToStudyEntries < ActiveRecord::Migration
  def change
    add_column :study_entries, :start_date, :date
    add_column :study_entries, :start_time, :datetime
    add_column :study_entries, :end_date, :date
    add_column :study_entries, :end_time, :datetime
  end
end
