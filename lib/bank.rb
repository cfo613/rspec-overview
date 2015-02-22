class Bank
  attr_accessor :name
  attr_reader :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(name, deposit)
    @accounts[name] = deposit
  end

  def deposit(name, amount)
    @accounts[name] += amount
  end

  def withdraw(name, amount)
    @accounts[name] -= amount
  end

  def balance(name)
    @accounts[name]
  end

end
