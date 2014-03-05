require_relative 'banktransaction'
require_relative 'bankaccount'
require 'csv'
require 'pry'

credits_and_debits = []
bank_accounts = []

CSV.foreach('bank_data.csv', headers: true) do |row|
  credits_and_debits << BankTransaction.new(row['Date'],row['Amount'].to_f,row['Description'],row['Account'])
end
# credits_and_debits #.each do |row|
#   row['Amount'].debit?

CSV.foreach('balances.csv', headers: true) do |row|
  bank_accounts << BankAccount.new(row["Account"],row["Balance"].to_f)
end

#put into its respective class def give_summary(credits_and_debits)
#Do Stuff Different


#put into its respective
def end_of_balance(bank_accounts, credits_and_debits)
  if section.account == "Purchasing Account"#if the transaction came from the Purchasing Account
#     bank_accounts.balance = bank_accounts.balance - section.amount
#   else #if the transaction came from the Business Checking
#     bank_accounts.balance = bank_accounts.balance - section.amount
end
end

#
def call_cred_deb(array)
  array.each do |transaction|
   puts transaction.summary
  end
end
binding.pry
bank_accounts[0].starting_balance
call_cred_deb(credits_and_debits)
#give_summary(credits_and_debits)
#starting_balance(bank_accounts)
  #bank_accounts.each.starting_balance
# end
# credits_and_debits.each do |section|
# puts bank_accounts.balance
#   if section.account == "Purchasing Account"#if the transaction came from the Purchasing Account
#     bank_accounts.balance = bank_accounts.balance - section.amount
#   else #if the transaction came from the Business Checking
#     bank_accounts.balance = bank_accounts.balance - section.amount
#   end
# end

# parked_cars.each do |car|
#   puts "#{car.owner} owns the #{car.color} #{car.cylinders}-cylinder"
# end


