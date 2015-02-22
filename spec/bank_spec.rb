require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("TD Bank") }

  describe ".new" do #the dot is a convention for class methods
    it "should create a Bank object" do
      expect(bank).to_not eq nil #eq is short for equal (essentially saying the bank object should not be empty)
    end

    it "should have no accounts" do
      expect(bank.accounts.count).to eq 0
    end
  end

  describe "#name" do
    it "should return the bank's name" do
      expect(bank.name).to eq "TD Bank"
    end
  end

  describe "#create_account" do
    it "should create an account" do
      bank.create_account("Bob", 200)
      expect(bank.accounts["Bob"]).to eq 200
    end
  end

  describe "#depost" do
    it "should deposit money from the client into an account" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      expect(bank.accounts["Bob"]).to eq 500
    end
  end

  describe "#balance" do
    it "should return the balance for the client" do
      bank.create_account("Bob", 200)
      expect(bank.balance("Bob")).to eq 200
    end
  end

  describe "#withdraw" do
    it "should subtract money from the account" do
      bank.create_account("Bob", 200)
      bank.withdraw("Bob", 50)
      expect(bank.balance("Bob")).to eq 150
    end
  end

end
