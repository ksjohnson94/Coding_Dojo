require_relative 'bankacc'
RSpec.describe BankAccount do

  it 'retrieving checking account balance' do

    bankacc1 = BankAccount.new
    bankacc1.check_bal

    expect(bankacc1.check_bal).to eq(0)

  end

  it 'retrieves total account balance' do

    bankacc1 = BankAccount.new
    bankacc1.total

    expect(bankacc1.total).to eq(0)
  end
  describe '#withdraw_check' do

		it 'check withdarawing cash' do


				bank = BankAccount.new
				bank.withdraw_check(100)

        expect {BankAccount.withdraw_check}.to_not raise_error()

		end

		it 'check withdraw cash works' do
			expect do

				bank = BankAccount.new
				bank.withdraw_check(0)

			end.to output("Enjoy your Money!\n").to_stdout
		end
	end
  it 'error checking total acounts' do
    bankacc1 = BankAccount.new
    bankacc1.total_acc

    expect {bankacc1.total_acc}.to raise_error()

  end
  it 'error interest rate' do
    bankacc1 = BankAccount.new
    bankacc1.interest_rate

    expect {bankacc1.interest_rate}.to_not raise_error()

  end

  it 'error user tries to set attribute' do

    bankacc1 = BankAccount.new("Hello World")

  end
end
