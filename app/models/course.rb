# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  course_number :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  member_id     :integer
#

class Course < ActiveRecord::Base
  belongs_to :members
  has_many :tasks

  def self.courses_for_user(user)
    user.courses
  end

  def associated_member
    member = Member.find(member_id)
  end

  def homeworks
    tasks.select{|task| task.type.eql? "Homework"}
  end

  def projects
    tasks.select{|task| task.type.eql? "Project"}
  end

  def tests
    tasks.select{|task| task.type.eql? "Test"}
  end
 
end
