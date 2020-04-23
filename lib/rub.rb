require_relative './bank_account.rb'
require_relative './transfer.rb'

amanda = BankAccount.new("Amanda")
terrance = BankAccount.new("Terrance")
terrance.status = "closed"

closed_account_transfer = Transfer.new(amanda, terrance, 50)
# transfer2 = Transfer.new(terrance, amanda, 150)
# transfer3 = Transfer.new(amanda, terrance, 250)
# transfer4 = Transfer.new(amanda, terrance, 450)

# puts terrance

puts closed_account_transfer.execute_transaction == "Transaction rejected. Please check your account balance."
puts closed_account_transfer.status == "rejected"
# puts Transfer.executed


