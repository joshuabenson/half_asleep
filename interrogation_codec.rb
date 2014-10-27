print "What do they call you?"
name_first = gets.chomp
print "Tell me your last name."
name_last = gets.chomp
print "What city you coming from?"
city = gets.chomp
print "Oh yeah? I forget, what state is that in?  Please use the abbreviation."
state = gets.chomp

puts "So let me get this straight.  They call you #{name_first}.  Not sure if thats your real name, sounds kinda made up."  
puts "Now if I go down to #{city} and ask around about a #{name_first} #{name_last} are people going to look at me like I'm crazy?  Is #{city} even in #{state}?  You better not be yanking my chain here."

puts "..."
puts "What gender do you identify as?"
gender_first = gets.chomp

puts "#{gender_first.upcase} huh? Not my first guess.  I'll write that down here so that we'll be aware of that in the future."
