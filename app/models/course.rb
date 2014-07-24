# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  course_number :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Course < ActiveRecord::Base
  belongs_to :members
  has_many :tasks
end
