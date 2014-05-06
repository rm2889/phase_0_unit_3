# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"

def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  stmt = "SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > ?"
  longest_reps = $db.execute(stmt,minimum_years.to_s)
  longest_reps.each { |rep, years| puts rep + " - " + years.to_s + " years" }
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < " + grade_level.to_s + "th grade)"
  stmt = "SELECT name FROM congress_members WHERE grade_current <?";
  puts $db.execute(stmt, grade_level.to_s)
end

def print_whaddup_reps
  puts "REPRESENTATIVES from New Jersey, New York, Maine, Florida, and Alaska"
  all_reps = $db.execute("SELECT name, location FROM congress_members WHERE location in ('NJ','NY','ME','FL','AK')")
  all_reps.each { |rep, loc| puts rep + " from " + loc }
end

def print_politicians_votes
	puts "Representatives and the number of votes they received"
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours
	reps_and_votes = $db.execute("select politician_id, count(voter_id), name from votes inner join congress_members on congress_members.id = votes.politician_id group by politician_id;")
	reps_and_votes.each {|id, num_votes, name| puts name + " - " + num_votes.to_s + " votes"}
end

def print_politician_voters
	puts "# A listing of each Politician and the voter that voted for them"
	# output should include the senators name, then a long list of voters separated by a comma"
	reps_and_voters = $db.execute("select name, group_concat(first_name || ' ' || last_name ,', ') from votes inner join voters on voters.id = votes.voter_id inner join congress_members on congress_members.id = votes.politician_id group by politician_id;")
	reps_and_voters.each {|name,voters| puts name + " - " + voters}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

# DONE!

print_separator
print_lowest_grade_level_speakers(7)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# DONE!

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
# lets call them whaddup states
print_separator
print_whaddup_reps
# DONE!

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.
#
# DONE!


# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_separator
print_politicians_votes
# TODO (bonus)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
print_separator

print_politician_voters

# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding? 
 
 # $db is a variable that holds a database object

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  

# We are calling the execute method on the db object with the argument being the select statement.
# It looks like the execute method will parse the string argument and figure out what type of query (SELECT in this case) it is, and 
# which table is being queried...
