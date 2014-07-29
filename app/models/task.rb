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
#  received_grade  :string(1)
#

class Task < ActiveRecord::Base
  belongs_to :members
  belongs_to :courses
  has_many :study_entries

  
  def associated_course
    course = Course.find(course_id)
  end

  def self.grades
    grades = ["A","B","C","D","F","I"]
  end

  def total_hours
    total = 0/1.hour
    study_entries.each do |study_entry|
      total = total + study_entry.hours
    end
    total
  end
end

