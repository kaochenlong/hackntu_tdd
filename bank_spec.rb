require "./bank"

RSpec.describe Bank do
  describe "存錢功能" do
    it "可以存錢" do
      bb = Bank.new(10)
      bb.deposit(20)
      expect(bb.balance).to eq(30)
    end

    it "不能存小於或等於 0 的金額" do
      bb = Bank.new(10)
      bb.deposit(-20)
      expect(bb.balance).to eq(10)
    end
  end

  describe "領錢功能" do
    it "可以領錢" do
      bb = Bank.new(10)
      bb.withdraw(5)
      expect(bb.balance).to eq(5)
    end

    it "不能領小於或等於 0 的金額" do
      bb = Bank.new(10)
      bb.withdraw(-5)
      expect(bb.balance).to eq(10)
    end

    it "不能領超過本身餘額" do
      bb = Bank.new(10)
      bb.withdraw(20)
      expect(bb.balance).to eq(10)
    end
  end
end
