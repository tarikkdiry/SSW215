#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System

puts "Give me a side length!"
a = gets.to_f

puts "Give me another side length!"
b = gets.to_f

puts "Give me that hypotenuse!"
c = gets.to_f

def triangle(a, b, c)

  s = (a + b + c) / 2.0
  #Checks to see if the inputs even make a triangle
  triangle_valid = (s - a) * (s - b) * (s - c)

  if a < 0 || b < 0 || c < 0 || triangle_valid <= 0
    return "This is not a triangle!"
  end

  if a==b && a==c
    return "Equilateral"
  elsif a==b || b==c || a==c
    return "Isosceles"
  else
    return "Scalene"
  end
end

def triangle_angle(a, b, c)

  s = (a + b + c) / 2.0
  #Checks to see if the inputs even make a triangle
  triangle_valid = (s - a) * (s - b) * (s - c)

  if a < 0 || b < 0 || c < 0 || triangle_valid <= 0
    return ""
  end

  if (a**2 + b**2) > c**2
    return " acute triangle"
  elsif (a**2 + b**2) < c**2
    return " obtuse triangle"
  else
    return " Stop this!"
  end
end

puts "Sides are: " + (a.to_i).to_s + "," + (b.to_i).to_s + "," + (c.to_i).to_s
puts triangle(a, b, c).to_s + triangle_angle(a, b, c).to_s
