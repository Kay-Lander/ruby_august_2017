class BankAccount
    def account_number
        p "1410403"
        self
    end
    def checking
        p 450.23
        self
    end
    def saving
        p 3433.09
        self
    end
    def total_amount
        @total_amount 
        self
    end
    def deposit
        @total_amount += 1000
        self
    end
    def balance
        @total_amount == total_amount
        self
    end
    def withdraw
        @total_amount -= 1000
        self
    end
end

b = BankAccount.new
b.account_number.checking.saving
b.deposit.deposit.withdraw.balance