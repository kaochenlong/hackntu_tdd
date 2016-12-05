class Bank
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(money)
    @balance += money if money > 0
  end

  def withdraw(money)
    @balance -= money if can_withdraw?(money)
  end

  private
  def can_withdraw?(money)
    money > 0 && (balance - money) >= 0
  end
end
