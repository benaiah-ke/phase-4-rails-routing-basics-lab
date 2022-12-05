class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students        
    end

    def grades
        stud_by_grades = Student.order(grade: :desc)
        render json: stud_by_grades    
    end

    def highest_grade
        stud_highest_grade = Student.find_by(grade: "#{Student.maximum(:grade)}")
        render json: stud_highest_grade  
    end
end
