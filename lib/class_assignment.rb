require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/classroom'
require 'byebug'

module ClassroomGenerator
  def self.generate
          student_list = Student.all
          teacher_list = Teacher.all
          20.times {
            student = student_list.sample
            teacher = teacher_list.sample
           Classroom.create!(student_id: student.id, teacher_id: teacher.id)
          }
  end
end
