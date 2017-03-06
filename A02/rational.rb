#Tarik Kdiry and Oscar Tavara
#I pledge my honor that I have abided by the Stevens Honor System. Tarik Kdiry
puts "Give me your first numerator!"
num1 = gets.to_f

puts "Give me your first denominator!"
den1 = gets.to_f

puts "Give me your second numerator!"
num2 = gets.to_f

puts "Give me your second denominator!"
den2 = gets.to_f

class Rat
  attr_accessor :num, :den
  def initialize(num, den)
    @num = num
    @den = den
  end
  def add!(r)
    (@num/@den) + (r.num/r.den)
  end
  def sub!(r)
    (@num/@den) - (r.num/r.den)
  end
  def mul!(r)
    (@num/@den) * (r.num/r.den)
  end
  def div!(r)
    (r.num/r.den) / (@num/@den)
  end
  def norm!(r)
    (@num'/'@den)
    (r.num'/'r.den)
  end
end

r = Rat.new(num1, den1)
r2 = Rat.new(num2, den2)

puts r.add!(r2)
puts r.sub!(r2)
puts r.mul!(r2)
puts r.div!(r2)
puts r.norm!(r2)
