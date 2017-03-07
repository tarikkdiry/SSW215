#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System
#Collaborated with Oscar Tavara

begin
  puts "Give me the students' names and class codes. Enter 0 when you are finished "
  $/ = "0"
  start_length =  0

  answer = STDIN.gets.split("\n")

  (answer.length - 1).times do |i|
    answer.delete($/)
    answer[i] = answer[i].split(" ")
    answer[i][1, answer[i].length]
      if (answer[i][0].is_a? String) && (not answer[i][1, answer[i].length].join.scan(/^\d+$/).empty?)
        start_length += answer[i].length
      end
  end
end until start_length == answer.inject([], :+).count

classes = Hash.new{|key, value| key[value] = []}
answer.length.times do |count|
  1.upto(answer[count].length - 1) do |i|
    classes[answer[count][i].to_i].push(answer[count][0].to_s)
  end
end

for l in classes.keys.sort
  puts "\n" + l.to_s + ":\n" + classes[l].sort.join("\n").to_s + "\n"
end
