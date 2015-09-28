require_relative '../app/models/student'
require_relative '../app/models/teacher'
require 'byebug'

class TeacherAssignment
	def self.assign
		student = Student.all
		teacher = Teacher.all
		byebug
		student.each do |x|
			x.teacher_id = teacher.sample.id
			x.save
		end
	end
end