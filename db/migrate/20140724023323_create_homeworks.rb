class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|

      t.timestamps
    end
  end
end
