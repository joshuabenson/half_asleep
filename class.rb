
class Pet

	def initialize(animal, weight_lbs, name, sound)
		@weight = weight_lbs
		@name = name
		@animal = animal
		@sound = sound

	Kernel.puts("Who's a good #{@animal}?")

	end

	def speak
		if @weight < 10
		Kernel.puts("#{@sound.downcase}")
	else
		Kernel.puts("#{@sound.upcase}")
end

end


	def feed(scoops)
		if scoops.*(6) < @weight

	scoops.to_s
	Kernel.puts("#{@sound.upcase}! Only #{scoops} scoops? I'm a #{@weight.to_s}lb #{@animal}! You need to give me more food!")

	scoops.to_i
	@weight = @weight - ((@weight - scoops.*(6))/3) #seems that when this quotient thats subtracted drops below 1 it stops performing the operation
													#rounding or refusal to subtract float from integer?
													#it sortof makes sense for this 'game' though, an equilibrium point.  But dogs always beg anyway :)
else

	scoops.to_i	
	@weight = @weight + (scoops./(2))
	Kernel.puts("Chew Chew Chew Chew Chew #{@sound.downcase} Chew Chew")
	end	
end

	
end

#	dog = pet.new
# Kernel.puts(dog)


