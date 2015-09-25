require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
self.attribute_names =  [:id, :first_name, :last_name, :gender, :birthday, :phone, :created_at, :updated_at]

  attr_reader :name, :age

  def assign_attributes(attributes={})
    attributes.symbolize_keys!

    # This defines the value even if it's not present in attributes
    @attributes = {}

    attribute_names.each do |name|
      @attributes[name] = attributes[name]
  end

  def name
    @name = @attributes[first_name] + @attributes[last_name]
  end

  def age
    now = Time.now.utc.to_date
    now.year - @birthday.year - ((now.month > @birthday.month || (now.month == @birthday.month && now.day >= @birthday.day)) ? 0 : 1)
  end
end