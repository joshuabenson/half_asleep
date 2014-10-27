
print "How has your life been these past three months?"
life = gets.chomp

life_up = life.upcase   #uppercase the string
life_down = life.downcase   #lowercase the string

if life == "good" || life == "alright" || life == "fine" || life == "ok" || life == "Good" || life == "Alright" || life == "Fine" || life == "Ok" || life == "GOOD" || life == "ALRIGHT" || life == "FINE" || life == "OK"

#looks at different case forms and neutral/positive adjectives

#There must be a way to turn this list into an array and iterate through...



puts "#{life_up}! I'm happy you're doing so well.  My life sucks."

else

	puts "Why do you think your life has been #{life_down}?"

end
