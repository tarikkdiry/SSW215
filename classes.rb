#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System
#Collaborated with Oscar Tavara


h = {}

begin
  puts "Give me the name of the student and the classes they are enrolled in."
  puts "When finished, enter 0"

  name = gets.to_s

  check = name.to_i

  if check == 0
    classes = [gets.to_i]
    n = classes.length
    n.times do
      if h.key?(classes[n])
        temp = h[classes[n]] + name
        n -= 1
      end
      if not h.key?(classes[n])
        h[classes[n] => name]
        n -= 1
      end
    end
  end
end until check == 1

puts h
