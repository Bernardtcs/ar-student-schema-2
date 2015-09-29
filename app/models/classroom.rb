require_relative '../../db/config'

class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end