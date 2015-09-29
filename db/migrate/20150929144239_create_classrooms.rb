require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateClassrooms < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :classrooms do |t|
          t.belongs_to :student, index: true
          t.belongs_to :teacher, index: true
          t.timestamps null: false
        end
        
    remove_reference :students, :teacher 
  end
end
