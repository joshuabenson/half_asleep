print "What do they call you?"
name_first = gets.chomp
print "Tell me your last name."
name_last = gets.chomp
print "What city you coming from?"
city = gets.chomp
print "Oh yeah? I forget, what state is that in?  Please use the abbreviation."
state = gets.chomp

puts "So let me get this straight.  They call you #{name_first.capitalize}.  Not sure if thats your real name, sounds kinda made up."  
puts "Now if I go down to #{city.capitalize} and ask around about a #{name_first.capitalize} #{name_last.capitalize} are people going to look at me like I'm crazy?  Is #{city.capitalize} even in #{state.upcase}?  You better not be yanking my chain here."

puts "..."
puts "What gender do you identify as?"
gender_first = gets.chomp

gender_split = gender_first.split(//)	#splits the gender_split string into an array of each letter

puts "#{gender_first.upcase} huh? Not my first guess.  I'll write that down here so that we'll be aware of that in the future."

#gender_split[0] 

print gender_split.delete_at(0)	#This is cool because it deletes the first index of gender_split but also prints it, very concise 


gender_split.each do |x|	#iterates through and prints the rest of the array with a preceeding '-'
	
	print "-"+x
	
	end

print "\n Interesting."    #\n starts newline, was having issue with that
