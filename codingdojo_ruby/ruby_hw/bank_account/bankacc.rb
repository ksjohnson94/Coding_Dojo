class BankAccount
	@@total_acc = 0

	def initialize
		@acc_num = 0
		@check_bal = 0
		@sav_bal = 0
		@@total_acc += 1
		@interest_rate = 0
		create_acc_number
	end

	def acc_num
		puts "Welcome! Your new Account Numer is: #{@acc_num}"
		self
	end

	def check_bal
		puts "Your Checking Account Balance is: $#{@check_bal}"
		@check_bal

	end

	def sav_bal
		puts "Your Savings Account Balance is: $#{@sav_bal}"
		@sav_bal
	end

	def deposit_check *param
		@check_bal = param.flatten.inject(@check_bal){|check_bal, param| param}
	end

	def deposit_saving *param
		@sav_bal = param.flatten.inject(@sav_bal){|sav_bal, param| param}
	end

	def withdraw_check *param
		current = param.flatten.inject(@check_bal){|check_bal, param| param}
		if current > @check_bal
			puts "Sorry - You don't have that much money!"
		else
			@check_bal = param.flatten.inject(@check_bal){|check_bal, param| check_bal - param}
			puts "Enjoy your Money!"
		end
	end

	def withdraw_saving *param
		current = param.flatten.inject(@sav_bal){|sav_bal, param| param}
		if current > @check_bal
			puts "Sorry - You don't have that much money!"
		else
			@sav_bal = param.flatten.inject(@sav_bal){|sav_bal, param| sav_bal - param}
			puts "Enjoy your Money!"
		end
	end

	def total
		total = @check_bal + @sav_bal
		puts "Your current Total in Checking & Savings is $#{total}"
		total
	end

	def account_information
		account
	end

	private  # all methods that follow will be made private: not accessible for outside objects
	def create_acc_number
		number = [1]
		@acc_num = Random.new.rand(15**15)
		set_interest
		# acc_num
	end
	def set_interest
		@interest_rate = Random.new.rand(1..10)
	end
	def total_acc
		puts "The Banks Current Total Accounts are: #{@@total_acc} "
	end
	def account
		puts "Your Account Number is: #{@acc_num}"
		puts "Your current Total in Checking & Savings is $#{@check_bal + @sav_bal}"
		puts "Your Checking Account Balance is: $#{@check_bal}"
		puts "Your Savings Account Balance is: $#{@sav_bal}"
		puts "Your Current Interest Rate is: %#{@interest_rate}"
	end

end
# puts "********************"
# test = BankAccount.new
# test.deposit_check(500)
# test.deposit_saving(1000)
# test.total_acc
# test.account_information
# puts "*********************"
# this = BankAccount.new
# this.deposit_saving(5000)
# this.deposit_check(10000)
# this.total_acc
# this.account_information
