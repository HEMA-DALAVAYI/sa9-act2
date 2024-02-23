require 'bank_account'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account1 = BankAccount.new()
      account1.deposit(500)
      expect(account1.balance).to eq(500)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account2 = BankAccount.new()
      account2.deposit(1500)
      account2.withdraw(500)
      expect(account2.balance).to eq(1000)
    end

    it "does not change the balance if insufficient funds" do
      account3 = BankAccount.new()
      account3.deposit(1500)
      account3.withdraw(5000)
      expect(account3.balance).to eq(1500)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account4 = BankAccount.new()
      expect(account4.balance).to eq(0)
    end
  end
end
