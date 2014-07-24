# == Schema Information
#
# Table name: study_entries
#
#  id         :integer          not null, primary key
#  start      :datetime
#  end        :datetime
#  task_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class StudyEntry < ActiveRecord::Base
  belongs_to :tasks
end
