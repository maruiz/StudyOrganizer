# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  course_id       :integer
#  type            :string(255)
#  due_date        :datetime
#  estimated_score :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class HomeworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
