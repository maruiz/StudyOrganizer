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

require 'test_helper'

class StudyEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
