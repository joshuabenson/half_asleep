

def query(user_input)

user_input = user_input.downcase.to_s
query_yes = ["yes", "y", "sure", "ok", "alright", "yeah", "yea" "fuck yeah", "ye", "es", "bullseye", "yy"]

	if query_yes.include?(user_input)
	return true
	else
	return nil
	end
end



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
		

		@name_first = name_first.name_first
		@initial_deposit = initial_deposit
		
		@account_name = @name_first

			if name_first.pocket_money.to_i >= @initial_deposit

			@stored_money += initial_deposit
			@account_balances[@account_name] = initial_deposit  #adds key/value to local hash variable 


			@customer_pocket = name_first.pocket_money.to_i
			name_first.pocket_money = (@customer_pocket - initial_deposit)
Kernel.puts("Thank you for choosing #{@bank_name} bank, proudly taking money from people like you for over #{@years} years. Your initial deposit of #{@initial_deposit} has been recieved.")

#Kernel.puts(@account_balances)
			else
Kernel.puts("#{@name_first} does not have #{@initial_deposit}.  Account creation cancelled.")

			end

	
		

	end	


	def sum_accounts() # adds up the total stored in customer accounts, and adds that to the bank's stored money to give the vault total.

		account_values = @account_balances.values.inject(:+)

		vault_total = account_values + @stored_money

Kernel.puts("#{@bank_name} has $#{vault_total} in its vault.")
	
	end
	
	

	def change_balance(account_name, new_amount)


		@account_balances[account_name] = new_amount  #changes instance hash key of account_name (the name_first) to new_amount.  it works!

	end



	def check_balances()  #returns the account_balances hash of all accounts at that bank instance

Kernel.puts(@account_balances)

	end

	

	def transfer_balance(account_name_from, account_name_to, transfer_amount)  #   Moves money from between accounts at bank used to call method
						

		if (@account_balances[account_name_from].to_i >= transfer_amount.to_i) 


		@account_balances[account_name_from] -= transfer_amount		
		
		@account_balances[account_name_to] += transfer_amount 		

Kernel.puts("Successfully transfered $#{transfer_amount} from #{account_name_from} to #{account_name_to}.")									
else
Kernel.puts("Sorry, #{account_name_from} only has #{@account_balances[account_name_from].to_s}, which is not enough funds to transfer #{transfer_amount} to #{account_name_to}'s account.")
		end

	end



	def transfer_different_bank(outside_bank, account_name_from, account_name_to, transfer_amount)   #  Moves money between accounts at different banks.

		@outside_bank = outside_bank.bank_name
		@outside_bank = @outside_bank.to_s
		
Kernel.puts("Transfer $#{transfer_amount} from #{account_name_from}'s account at #{@outside_bank} bank to #{account_name_to}'s account at #{@bank_name} bank? (yes/no). Type no for more options")
		
		query1 = gets.chomp
		@answer = query(query1) 

		if 	@answer  # Condition is true if user says yes

			if (outside_bank.account_balances[account_name_from].to_i >= transfer_amount.to_i) 	#confirm account has sufficient funds
		
				@outside_balance = (outside_bank.account_balances[account_name_from].to_i)	

				outside_bank.account_balances[account_name_from] = (@outside_balance - transfer_amount)

				@account_balances[account_name_to] += transfer_amount

			else

Kernel.puts("#{account_name_from} does not have sufficient funds.  Transaction cancelled.")
			
			end

		else   #if user does not say yes to first confirmation prompt, they are offered the option to reverse the transfer direction, in case thats what they meant.

Kernel.puts("Transfer $#{transfer_amount} from #{account_name_to}'s account at #{@bank_name} bank to #{account_name_from}'s account at #{@outside_bank}? bank (yes/no)")
			
		query2 = gets.chomp
		@answer2 = query(query2) 

				if 	@answer2	# Condition is true if user says yes

					if (@account_balances[account_name_to].to_i >= transfer_amount.to_i)  #confirm account has sufficient funds
		
						@outside_balance = (outside_bank.account_balances[account_name_from].to_i)	

						outside_bank.account_balances[account_name_from] = (@outside_balance + transfer_amount)

						@account_balances[account_name_to] -= transfer_amount

					else

Kernel.puts("#{account_name_to} does not have sufficient funds.  Transaction cancelled.")
			
					end

				else	#  if user refuses both propmts

Kernel.puts("Transaction cancelled.")	

				end

		end
			
	end

end




class Person
	attr_accessor :pocket_money
	attr_accessor :name_first
	def initialize(name_first, gender, pocket_money)
	
		
		@name_first = name_first
		@pocket_money = pocket_money
		

Kernel.puts("Welcome to the world #{@name_first}. Its not easy getting by as a #{gender} person, especially with all these corrupt financial institutions.")
	

	end
	


	def transfer_pocket(from, to, transfer_amount)  
						
		

		from.pocket_money -= transfer_amount		
		
													

		to.pocket_money += transfer_amount

	end

end

josh = Person.new("Josh", "male", 700)
flosh = Person.new("Flosh", "cis-male", 50)
frank = Person.new("Frank", "prefer not to say", 340)
sarah = Person.new("Sarah", "female", 2000)
carly = Person.new("Carly", "transgender", 500)
faj = Person.new("Faj", "big guy", 40)

dumb = Bank.new("Dumb", 1000000, "Lizordville")

ruthless = Bank.new("Ruthless", 5555555, "Seattle")

fed = Bank.new("Federal Reserve", 1000000000000, "Washington")

china = Bank.new("Bank of China", 30000000000000, "China")






