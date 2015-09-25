require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, uniqueness: true


end