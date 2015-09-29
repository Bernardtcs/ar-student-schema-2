require_relative '../config'

# this is where you should use an ActiveRecord migration to

class ChangeStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :address, :string

    reversible do |dir|
      dir.up do
        Student.all.each do |x|
          x.update(name: "#{x.first_name} #{x.last_name}")
        end
      end
      dir.down do
        Student.all.each do |x|
          name = x.name.split(" ")
          x.update(first_name: name[0])
          x.update(last_name: name[1])
        end
      end
    end

    remove_column :students, :first_name
    remove_column :students, :last_name
  end
end
