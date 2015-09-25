require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, uniqueness: true
validates :age, :numericality => { :greater_than_or_equal_to => 5 }

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
end