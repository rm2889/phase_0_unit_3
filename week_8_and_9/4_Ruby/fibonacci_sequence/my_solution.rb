# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
One test is to check if 5n^2+4 or 5*n^2-4 is a perfect square
square = 5n^2+4
square_root = sqrt(5n^2+4)
integer_version = square_root.to_i
IF square_root.to_i == square_root
	return true
ELSE
	return false
END

=end


# 3. Initial Solution
require 'bigdecimal'

def is_fibonacci?(num)
	square_1 = 5*num**2+4
	if is_perfect_square?(square_1)
		return true
	else
		square_2 = square_1-8
		if is_perfect_square?(square_2)
			return true
		else return false
		end
	end
end

def is_perfect_square?(number)
	# number = BigDecimal.new(number)
	square_root = sqrt(number)
	root_int = square_root.to_i
	return root_int**2==number
end

def sqrt(i)
  a, b = 0, i
  while a + 1 < b
    m = (a + b) / 2
    if m**2 > i
      b = m
    else
      a = m
    end
  end
  a
end


# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

puts is_fibonacci?(random_fibonacci)==true
puts is_fibonacci?(8670007398507948658051921)==true
puts is_fibonacci?(random_fibonacci+100)==false
puts is_fibonacci?(927372692193078999171)==false

# 5. Reflection 
# Had to implement a different square root function as Math.sqrt isn't precise enough for really large integers