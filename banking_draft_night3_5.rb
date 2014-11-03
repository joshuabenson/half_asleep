



class Bank
	attr_accessor :account_balances
	attr_accessor :bank_name
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
	def add_accounts() # adds up the total stored in customer accounts, and adds that to the bank's stored money to give the vault total.

		account_values = @account_balances.values.inject(:+)

		vault_total = account_values + @stored_money

		#total_values.inject(:+)


		Kernel.puts("#{@bank_name} has $#{vault_total} in its vault.")
	end
	
	

	def change_balance(account_name, new_amount)


		@account_balances[account_name] = new_amount  #changes instance hash key of account_name (the name_first) to new_amount.  it works!

	end

	def check_balances()


		Kernel.puts(@account_balances)

	end

	

	def transfer_balance(account_name_from, account_name_to, transfer_amount)  #   moves money from between accounts at the bank used to call method
						

		if (@account_balances[account_name_from].to_i >= transfer_amount.to_i)


		@account_balances[account_name_from] -= transfer_amount		
		
		@account_balances[account_name_to] += transfer_amount 		

		Kernel.puts("Successfully transfered $#{transfer_amount} from #{account_name_from} to #{account_name_to}.")									
else
	Kernel.puts("Sorry, #{account_name_from} only has #{@account_balances[account_name_from].to_s}, which is not enough funds to transfer #{transfer_amount} to #{account_name_to}'s account.")
	end

end

	def transfer_different_bank(outside_bank, account_name_from, account_name_to, transfer_amount)

		@outside_bank = outside_bank.bank_name
		@outside_bank = @outside_bank.to_s
		
		if (outside_bank.account_balances[account_name_from].to_i >= transfer_amount.to_i)



		Kernel.puts("This will transfer $#{transfer_amount} from #{account_name_from}'s account at #{@outside_bank} bank to #{account_name_to}'s account at #{@bank_name} bank. Are you sure? (yes/no). Type no for more options")
		@query = gets.chomp
		@query.to_s

		@query_yes = ["yes", "y", "sure", "ok", "alright", "fuck yeah", "ye", "es"]

		if 	@query_yes.include?(@query.to_s)

				@outside_balance = (outside_bank.account_balances[account_name_from].to_i)	

				outside_bank.account_balances[account_name_from] = (@outside_balance - transfer_amount)

			#	@outside_bank.account_balances[account_name_from] = (@outside_balance - transfer_amount)

			@account_balances[account_name_to] += transfer_amount

		else
			Kernel.puts("Transfer $#{transfer_amount} from #{account_name_to}'s account at #{@bank_name} bank to #{account_name_from}'s account at #{@outside_bank}? (yes/no)")
			@query2 = gets.chomp
			@query2.to_s
		if 	@query_yes.include?(@query2.to_s)

			if (@account_balances[account_name_to].to_i >= transfer_amount.to_i)
		
		@outside_balance = (outside_bank.account_balances[account_name_from].to_i)	

				outside_bank.account_balances[account_name_from] = (@outside_balance + transfer_amount)

			

			@account_balances[account_name_to] -= transfer_amount

		else
			Kernel.puts("Sorry, can't do that.  #{account_name_to} doesn't have enough money.")
		end

		else
			Kernel.puts("Transaction cancelled.")
		end

	end
		
		else
			Kernel.puts("Sorry, can't do that.  #{account_name_from} doesn't have enough money.")


end

end

end

class Person
	attr_accessor :pocket_money
	def initialize(name_first, gender, pocket_money)
	
		
		@name_first = name_first
		@pocket_money = pocket_money
		
		


Kernel.puts("Welcome to the world #{@name_first}. Its not easy getting by as a #{gender} person, especially with all these corrupt financial institutions.")
	

	end

#def check_pocket(name_first)

#		$c = @pocket_balances[name_first].to_f #returns a global variable for use by transfer_balance method.  Try without global?
#		return $c
#	end

	

	def transfer_pocket(from, to, transfer_amount)  
						
		

		from.pocket_money -= transfer_amount		
		
													

		to.pocket_money += transfer_amount

	end

end

