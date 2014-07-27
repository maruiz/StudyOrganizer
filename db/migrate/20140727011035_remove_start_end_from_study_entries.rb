class RemoveStartEndFromStudyEntries < ActiveRecord::Migration
  def change
    remove_column :study_entries, :start
    remove_column :study_entries, :end
  end
end
