require_relative '../../db/config'
require 'byebug'

class Student < ActiveRecord::Base
# implement your Student model here
  attr_accessor :first_name, :last_name, :gender, :birthday, :email, :phone
  attr_reader :name, :age

  def name
    @name = @first_name + " " +@last_name
  end

  def age
    now = Time.now.utc.to_date
    now.year - @birthday.year - ((now.month > @birthday.month || (now.month == @birthday.month && now.day >= @birthday.day)) ? 0 : 1)
  end
end