
class Bank
	attr_accessor :stored_money, :balance
	def initialize(name, stored_money, city)

		@name = name
		@stored_money = stored_money.to_f
		@city = city
		@years = 1.+(rand(1000))
	Kernel.puts("We are #{@name} bank. Proudly serving #{@city} for over #{@years} years. We currently have $#{@stored_money.to_s} our vault, and we'd would love to take your money today.")

	end

	def open_account(name_first, initial_deposit)

		@name_last = name_last
		@name_first = name_first
		

		@stored_money += initial_deposit

		initial_deposit = (@name_first + _balance)
Kernel.puts("Thank you for choosing #{@name} bank, proudly taking money from people like you for over #{@years} years. Your initial deposit of #{@balance} has been recieved.")

end

	def transfer(from, to, amount)
		from.balance -= amount
		to.balance += amount
	end
end

class Person
	attr_accessor :pocket_money
	def initialize(name_first, gender, pocket_money)
	
		
		@name_first = name_first
		@pocket_money = pocket_money
		#@phone_number = phone_number
Kernel.puts("Welcome to the world #{@name_first}. Its not easy being a #{gender} person, especially with all these criminally reckless too-big-to-fail financial institutions.")
	end

	#	def person_verify(first_name, last_name)


	#	end

	def pocket_transfer(amount)

		@pocket_money += amount

	end

end

