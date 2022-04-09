class StudentsController < ApplicationController

    #return a list of all students
    def index 
        students = Student.all
        render json: students
    end

    #return a list of students ordered by grade from high-low
    def grades
        students = Student.order("grade DESC")
        render json: students
    end

    #return one student with the highest grade 
    def highest_grade
        # student = Student.order("grade DESC").limit(1)
        student = Student.order(grade: :desc).limit(1)
        render json: student
    end

end
