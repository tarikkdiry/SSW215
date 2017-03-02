#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System

require 'time'

puts "Give me that starting date:"
puts "Year?"
year = gets.to_i

puts "Month?"
month = gets.to_i

puts "Day? "
day = gets.to_i

#mm/dd/yyyy
startDateList = [month, day, year]
startDate = Time.new(startDateList[2], startDateList[0], startDateList[1], 8, 0, 0)

if !startDate.monday?
  puts "We have to start on a Monday"
else
  puts "Give me the expected number of days."
  days_expect = gets.to_i

  puts "Give me the expected amount of time."
  puts "Hours?"
  hours = gets.to_i

  puts "Minutes?"
  minutes = gets.to_i

  puts "Seconds?"
  seconds = gets.to_i
end

dateFinal = startDate + days_expect*86400.00 + hours*3600.00 + minutes*60.00 + seconds

puts startDate.strftime("Start: %A, %m/%d/%Y on %T")
puts dateFinal.strftime("End: %A, %m/%d/%Y on %T")
