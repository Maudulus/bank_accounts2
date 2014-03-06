require_relative 'banktransaction'
require_relative 'bankaccount'
require 'csv'
require 'pry'

credits_and_debits = []

accounts = []
CSV.foreach('balances.csv', headers: true) do |row|
  accounts << BankAccount.new(row["Account"],row["Balance"].to_f)
end

CSV.foreach('bank_data.csv', headers: true) do |row|
  credits_and_debits << BankTransaction.new(row['Date'],row['Amount'].to_f,row['Description'],row['Account'])
end

def which_account(credits_and_debits,accounts)
  credits_and_debits.each do |transaction|
    accounts.each do |account|
      if account.name == transaction.account
        account.add_transaction(transaction)
        break
      end
    end
  end
end
which_account(credits_and_debits, accounts)


def show_me_the_transactions(the_bank )
  the_bank.each do |act|
    act.ending_balance(transactions)
  end
end


accounts[0].summary
accounts[1].summary

