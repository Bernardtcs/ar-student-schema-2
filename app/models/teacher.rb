require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, uniqueness: true
has_many :classrooms
has_many :students, through: :classrooms

  def name
    "#{first_name} #{last_name}"
  end
end