#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System
#Collaborated with Oscar Tavara


begin
  puts "Give me the students' names and class codes. Enter '0' when finished"
  $/ = '0'
  answer = STDIN.gets.split
  start_length = 0

  (answer.length - 1).times do |i|
    answer.delete($/)
    answer[i] = answer[i].split("")
    answer[i][1, answer[i].length].map(&:to_i)


    # if (answer[i][0].is_a? String) && (!answer[i][1, answer[i].length].join.scan(/^\d+$/).empty?)
    #   start_length += answer[i].length

end until start_length == answer.inject([], :+).count

classes = Hash.new{|x, y| x[y] = []}
answer.length.times do |count|
  l.upto(answer[count][i].to_i].push(input[count][0].to_s)
    classes[answer[count][i].to_i].push(answer[count][0].to_s)
  end
end

while c in classes.keys.sort
  puts "\n" + c.to_s + ": \n" + classes[c].sort.join("\n").to_s + "\n"
end



# class2 = gets.to_i
# class3 = gets.to_i

# if h['class'].include?(class1)
#   puts class1.to_s + ":"
#   puts student_name
# end



# begin
#   puts "Give me the name of the student and the classes they are enrolled in."
#   puts "When finished, enter 0"
#
#   name = gets.to_s
#
#   check = name.to_i
#
#   if check == 0
#     classes = [gets.to_i]
#     n = classes.length
#     n.times do
#       if h.key?(classes[n])
#         temp = h[classes[n]] + name
#         n -= 1
#       end
#       if not h.key?(classes[n])
#         h[classes[n] => name]
#         n -= 1
#       end
#     end
#   end
# end until check == 1
#
# puts h
