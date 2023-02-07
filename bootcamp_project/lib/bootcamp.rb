
class Bootcamp

    @@teachers = Array.new([])
    @@students = Array.new([])
    @@grades = Hash.new([])
   
    def initialize (name, slogan, student_capacity)
        @name = name #string
        @slogan = slogan #string
        @student_capacity = student_capacity #number
        @teachers = Array.new([])
        @students = Array.new([])
        @grades = Hash.new { |h, k| h[k] = [] }
    end

# getters

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

# setter

# other methods

    def hire(teacher) #string
        @teachers << teacher
    end

    def enroll(student) #string
            if students.length < @student_capacity
                students << student
                true
            else
                return false
            end
    end

    def enrolled?(student) #string
        @students.map(&:downcase).include?(student.downcase)
    end

    def student_to_teacher_ratio

        @students.length / @teachers.length


    end

    def add_grade(student, grade) #string, number

        if enrolled?(student)
            @grades[student] << grade
            true
        else
            false
        end
    end


    def num_grades(student) #string
        @grades[student].length

    end

    def average_grade(student) #string
        if enrolled?(student) == false || @grades[student] == []
            nil
        else
            @grades[student].sum / @grades[student].length
        end
    end



   
end
