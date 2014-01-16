class Person

	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{name}"
	end
end


class Student < Person
	def learn
		puts "I get it!"
end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"

	end
end

instructor = Instructor.new ("Chris")
student = Student.new ("Christina")

instructor.greeting 
student.greeting

instructor.teach
student.learn

student.teach # When student.teach is called this error shows up. 
			#undefined method `teach' for #<Student:0x007fc57b245778 @name="Christina"> (NoMethodError)
			#This error shows up because "teach" is not defined in the "student" method

