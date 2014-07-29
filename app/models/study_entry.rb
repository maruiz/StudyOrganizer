# == Schema Information
#
# Table name: study_entries
#
#  id         :integer          not null, primary key
#  task_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  start_date :date
#  start_time :datetime
#  end_date   :date
#  end_time   :datetime
#

class StudyEntry < ActiveRecord::Base
  belongs_to :tasks

  def hours
    (end_time - start_time)/1.hour
  end

end
