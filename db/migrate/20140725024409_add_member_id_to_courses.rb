class AddMemberIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :member_id, :integer
  end
end
