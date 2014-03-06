class BankAccount
  attr_accessor :starting_balance, :ending_balance
  attr_reader :transactions, :name

  def initialize(name ,balance, transactions = [])
    @name = name
    @balance = balance
    @transactions = transactions
  end

  def starting_balance
    @balance
  end

  def ending_balance
    running_total = @balance
    @transactions.each do |trans|
      running_total += trans.amount
    end
    running_total
  end


  def add_transaction(trans)
    @transactions << trans
  end

  def summary
    puts "==== #{name} ===="
    puts "Starting Balance: #{@balance}"
    puts "Ending Balance: #{ending_balance}"
    puts ""
    @transactions.each do |summarize|
      if summarize.amount < 0
        puts "$#{summarize.amount}   DEBIT   #{summarize.date} - #{summarize.description}"
      else
        puts "$#{summarize.amount}   CREDIT   #{summarize.date} - #{summarize.description}"
      end
    end
    puts ""
  end

end
