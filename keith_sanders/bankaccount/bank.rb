class BankAccount
  attr_reader :account_number, :checking, :saving

  @@bank_accounts = 0

  def initialize 
    @account_number = create_account
    @checking = 0
    @saving = 0
    @@bank_accounts ++  #wouldn't appear
    @interest_rate = 0.01
  end

  def show_account
    p "Your account number is #{@account_number}."
  end

  def deposit(account, amount)
    if account == "checking"
      @checking += amount
    else
      @saving += amount 
    end
    return self
  end

  def withdrawal(account, amount)
    if account == "checking"
      if @checking < amount 
        p "Insufficient Funds, you have #{@checking} in this account"
      else
        @checking -= amount
      end
    else
      if @saving < amount
        p "Insufficient Funds, you have #{@saving} in this account"
      else
        @saving -= amount
      end
    end
    return self
  end

  def total
    "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance: #{@checking + @saving}"
    return self
  end

  def account_information
    "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}" 
    return self
  end

  def bank_accounts
    @@bank_accounts
    return self
  end

  private
    def create_account
      Array.new(10).map { rand(1..9) }.join
    end
end
b = BankAccount.new
b.deposit("checking", 5000)
b.deposit("saving", 7999)
b.withdrawal("checking", 3566)
p b.account_information
p b.bank_accounts