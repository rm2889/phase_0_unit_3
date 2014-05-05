# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @scores = scores
    @first_name = first_name
  end

  def average
  	sum = scores.inject(0) {|sum, n| sum + n}
  	return sum.to_f/scores.length
  end

  def letter_grade
  	if average >= 90
  		return 'A'
  	elsif average >= 80
  		return 'B'
  	elsif average >= 70
  		return 'C'
  	elsif average >= 60
  		return 'D'
  	else
  		return 'F'
  	end	
  end
end	


filler_array = [1,1,1,1,1]
alex = Student.new("Alex",[100,100,100,0,100])
stevo = Student.new("SteveO",filler_array.map{rand(100)})
mikey = Student.new("Mikey",filler_array.map{rand(100)})
tommy = Student.new("Tommy",filler_array.map{rand(100)})
jimmy = Student.new("Jimmy",filler_array.map{rand(100)})

students = [alex, stevo, mikey, tommy, jimmy]

def linear_search(array, name)
	length = array.length
	for i in 0..length-1
		if array[i].first_name == name
			return i
		end
	end
	return -1
end


# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert {
  students[0].first_name == "Alex"
}

assert {
  students[0].scores.length == 5
}

assert {
  p students[0].scores[0] == students[0].scores[4]
}

assert {
  p students[0].scores[3] == 0
}

assert {
  p students[0].average == 80
}

assert {
  p students[0].letter_grade == 'B'
}

assert {
  p linear_search(students, "Alex") == 0
}

assert {
  p linear_search(students, "NOT A STUDENT") == -1
}

# 5. Reflection 
# Again, a pretty basic class. Got a nice refresher on assert again, which was good.