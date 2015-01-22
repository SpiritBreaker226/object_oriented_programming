class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Student < Person
	def learn
		"I get it!"
	end
end

class Instructor < Person
	def teach
		"Everything in Ruby is an Object"
	end
end

student = Student.new
instructor = Instructor.new
john = Person.new("john")

puts student.learn
puts instructor.teach
puts john