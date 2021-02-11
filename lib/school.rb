# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students, grades)
        @roster[grades] ||= []
        @roster[grades] << students
    end

    def grade(grades)
        @roster[grades]
    end
    
    def sort 
        new_roster = {}
        @roster.each {|grades, students| new_roster[grades] = students.sort}
        new_roster
    end
end