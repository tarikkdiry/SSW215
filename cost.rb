#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System

def tax(bill, n_tax)
  tax_product = bill * n_tax
  return tax_product
end

def tip(bill, n_tip)
  tip_product = bill * n_tip
  return tip_product
end

def round_up(total_cost, n)
  round_up = ((((total_cost/n)+ 0.005).round(2))*n)
end


puts "Initial bill?"
bill = gets.to_f

puts "What's the tax rate?"
n_tax = gets.to_f / 100

puts "What percentage are you tipping?"
n_tip = gets.to_f / 100

puts "What cent value do you want to round the total to?"
n = gets.to_f

a = tip(bill, n_tip)

b = tax(bill, n_tax)

total_cost = a + b + bill

puts "Total cost is: "
final_cost = round_up(total_cost, n)
puts final_cost.to_s
