# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
	attr_accessor :width, :height

  	def initialize(width, height)
		@width  = width
	    @height = height
	end
	
	def ==(other)
		(other.width  == self.width && other.height == self.height ) ||
		(other.height == self.width && other.width  == self.height )
	end

	def area
		return width*height
	end

	def perimeter
		return 2*(width+height)
	end

	def diagonal
		return Math.sqrt(width**2 + height**2)
	end

	def square?
		return width==height
	end
end


# 4. Refactored Solution

class Rectangle
	private 
	attr_writer :width, :height

	public
	attr_reader :width, :height

  	def initialize(width, height)
		@width  = width
	    @height = height
	end
	
	def ==(other)
		(other.width  == self.width && other.height == self.height ) ||
		(other.height == self.width && other.width  == self.height )
	end

	def area
		return width*height
	end

	def perimeter
		return 2*(width+height)
	end

	def diagonal
		return Math.sqrt(width**2 + height**2)
	end

	def square?
		return width==height
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

rectangle = Rectangle.new(10,20)
square = Rectangle.new(20,20)

def assert 
	raise "Assertion failed!" unless yield
end

assert {
	Rectangle.method_defined?('area')
}

assert {
	rectangle.area == 200
}

assert {
	square.area == 400
}

assert {
	Rectangle.method_defined?('perimeter')
}

assert {
	rectangle.perimeter == 60
}

assert {
	square.perimeter == 80
}

assert {
	Rectangle.method_defined?('diagonal')
}

assert {
	rectangle.diagonal == 22.360679774997898
}

assert {
	square.diagonal == 28.284271247461902
}

assert {
	Rectangle.method_defined?('square?')
}

assert {
	rectangle.square? == false
}

assert {
	square.square? == true
}


# 5. Reflection 
# Very simple exercise - the only refactoring I did was make the instance variable writer method private, as there's no need to change
# the width and the height outside of this class