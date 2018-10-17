printf "Enter the amount of months: \n"
amount = gets.to_i
puts "Amount of rabbit couples is #{ 2**(amount - 1) }."
