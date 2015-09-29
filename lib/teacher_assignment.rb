require_relative '../app/models/student'
require_relative '../app/models/teacher'

class TeacherAssignment
	def self.assign
		student = Student.all
		teacher = Teacher.all
		student.each do |x|
			x.teacher_id = teacher.sample.id
			x.save
		end
	end
end