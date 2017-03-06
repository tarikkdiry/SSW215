#piglatin.rb
#Tarik Kdiry, Oscar Tavara
#I pledge my honor that I have abided by the Stevens Honor System

puts "Gimme that statement"
count = 0

words = gets.split(/\W+/)

begin
word = words[count].split(/([aeiou].*)/)


if word[0].empty?
  words[count] = words[count] + 'way'
else
  words[count] = word[1] + word[0] + 'ay'
end

print words[count].to_s + ''
count = count + 1
end until words.length == count
