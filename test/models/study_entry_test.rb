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

require 'test_helper'

class StudyEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
