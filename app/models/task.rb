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

class Task < ActiveRecord::Base
  belongs_to :members
  belongs_to :courses
  has_many :study_entries

  def self.types
    types = ["Homework", "Project", "Test"]
  end

  def associated_course
    course = Course.find(course_id)
  end

  def self.grades
    grades = ["A","B","C","D","F","I"]
  end

end

