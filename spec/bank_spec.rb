require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("TD Bank") }

  describe ".new" do #the dot is a convention for class methods
    it "should create a Bank object" do
      expect(bank).to_not eq nil #eq is short for equal (essentially saying the bank object should not be empty)
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

end
