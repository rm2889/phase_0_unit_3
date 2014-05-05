# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself].


# 1. Original Solution


def valid_triangle?(a, b, c)
  if a != 0 and b != 0 and c != 0
    sum = 0
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end    
    if c > largest
      sum += largest
      largest = c
    else 
      sum += c
    end
    if sum > largest
      return true
    else 
      return false
    end
  else 
    return false
  end
end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# Ans: Failure/Error: method(:valid_triangle?).arity.should eq 3

# * what is the exact line number the error is appearing?
# Ans: line 9

# * before you fix the bug, what do you think is causing the error?
# Ans: looks like the method should be implemented with three arguments, but it has 4 arguments 

# --- Bug 2 ---
# * what is the exact description of the error?
# Ans: Failure/Error: valid_triangle?(length, length, length).should be_true
#  NoMethodError:
       # undefined method `+' for nil:NilClass

# * what is the exact line number the error is appearing?
# Ans: Line 14

# * before you fix the bug, what do you think is causing the error?
# Ans: Since I removed the sum as an argument, need to initialize it as sum is set to nil right now

# --- Bug 3 ---
# * what is the exact description of the error?
# valid_triangle? returns false if any of the arguments are 0

# * what is the exact line number the error is appearing?
# Ans: No particular line, looks like its a logical error

# * before you fix the bug, what do you think is causing the error?
# Ans: the || in line 11 should be changed to && 

# 3. Refactored Solution (Comment the other code to run this)




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


# 5. Reflection 
# It is now passing all the rspec tests. Another implementation could have been passing all the parameters in a sorted array, 
# then adding the first two elements to check if they're > third element. Not sure which is better in terms of memory constraints etc.