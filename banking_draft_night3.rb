



class Bank
	attr_accessor :account_balances
	def initialize(bank_name, stored_money, city)

		@bank_name = bank_name
		@stored_money = stored_money.to_f
		@city = city
		@years = 1.+(rand(1000))
		
		@account_balances = {}

	Kernel.puts("We are #{@bank_name} bank. Proudly serving #{@city} for over #{@years} years. We currently have $#{@stored_money.to_s} our vault, and we'd would love to take your money today.")

	end

	def open_account(name_first, initial_deposit)

		
		@name_first = name_first
		@initial_deposit = initial_deposit
		@stored_money += initial_deposit

		@account_name = @name_first

		key = @account_name
		@account_balances[key] = initial_deposit  #adds key/value to local hash variable 

Kernel.puts("Thank you for choosing #{@bank_name} bank, proudly taking money from people like you for over #{@years} years. Your initial deposit of #{@initial_deposit} has been recieved.")
Kernel.puts(@account_balances)
end

	
	def check_balance(account_name)

		@account_balances[account_name]
	end

	def change_balance(account_name, new_amount)



		@account_balances[account_name] = new_amount  #changes local hash key of account_name (the name_first) to new_amount.  it works!

	end

	def transfer_balance(account_name, bank_name, transfer_amount)  #   moves money from person's account at bank instance used to call this method, to 
						
		bank_name.check_balance(account_name) = current_balance	

		@account_balances[account_name] -= transfer_amount		
		
		current_balance += transfer_amount 											

		bank_name.change_balance(account_name, current_balance)

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

		

	end

end

