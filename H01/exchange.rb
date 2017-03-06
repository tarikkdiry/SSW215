#Tarik Kdiry and Oscar Tavara

puts 'How many US dollars do you want to exchange?'
us_dollars = gets
puts 'Your input is: ' + us_dollars.to_s

puts 'Enter the name of currency you are converting into.'
currency_name = gets
puts 'Your input is: ' + currency_name

puts 'How much of your currency does one US dollar equal'
puts 'Ex) 1 US dollar = 61.74 rupees.'
currency_amount = gets


puts 'Your value is: '
puts us_dollars.to_f * currency_amount.to_f
puts currency_name
