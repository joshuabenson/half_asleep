

$account_balances = {}

class Bank
	#attr_accessor :stored_money
	def initialize(bank_name, stored_money, city)

		@bank_name = bank_name
		@stored_money = stored_money.to_f
		@city = city
		@years = 1.+(rand(1000))
		
		

	Kernel.puts("We are #{@bank_name} bank. Proudly serving #{@city} for over #{@years} years. We currently have $#{@stored_money.to_s} our vault, and we'd would love to take your money today.")

	end

	def open_account(name_first, initial_deposit)

		
		@name_first = name_first
		@initial_deposit = initial_deposit
		@stored_money += initial_deposit

		@account_name = @name_first + @bank_name

		key = @account_name
		$account_balances[key] = initial_deposit

Kernel.puts("Thank you for choosing #{@bank_name} bank, proudly taking money from people like you for over #{@years} years. Your initial deposit of #{@initial_deposit} has been recieved.")
Kernel.puts($account_balances)
end

	def transfer(from, to, amount)	#for 'from' use account_name, and for 'to' use the name of the bank that has an open account with the same 'name_first'
		
		from_key = from + class.Self

		Kernel.puts from_key
		

	end
end

class Person
	#attr_accessor :pocket_money
	def initialize(name_first, gender, pocket_money)
	
		
		@name_first = name_first
		@pocket_money = pocket_money
		
Kernel.puts("Welcome to the world #{@name_first}. Its not easy to get by as a #{gender} person, especially with all these too-big-to-fail financial institutions.")
	end


	def pocket_transfer(amount)

		@pocket_money += amount

	end

end

