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
#  member_id       :integer
#  received_grade  :string(1)
#

require 'test_helper'

class TestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
