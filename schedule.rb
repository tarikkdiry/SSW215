#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System.
#I apologize for the errors, I tried my best.

require 'time'

puts "Alright, let's get this pool started"

puts "Job number for customer: "
job_number = gets.to_i

puts "What is the length of your pool in feet?"
length = gets.to_f

puts "What is the width of your pool?"
width = gets.to_f

puts "What is the depth at that shallow end?"
height_shallow = gets.to_f

puts "What is the depth at the deep end?"
height_deep = gets.to_f

puts "How many jobs are there?"
jobs = gets.to_i


class Pool
  def initialize(startDate)
    @startDate = startDate + 86400
    begin
      puts "Your job number is: "
      @job_num = gets.to_i
    end until Integer(@job_num) >= 0
  end
end

startDate = startDate + 86400

def surfaceArea(length, width, height_shallow, height_deep)
  hypotenuse = Math.sqrt((height_deep - height_shallow) ** 2 + (length ** 2))
  return (2 * length * height_shallow) + (length * (height_deep - height_shallow)) + (height_deep * width) + (height_shallow * width) + (width * hypotenuse)
end

def volume(length, width, height_shallow, height_deep)
  hypotenuse = Math.sqrt((height_deep - height_shallow) ** 2 + (length ** 2))
  volume_rectangular = (length * height_shallow) * width
  volume_triangular = (0.5 * length * (height_deep - height_shallow)) * width
  return volume_rectangular + volume_triangular
end

def poolPaint
  @painting = (@surfaceArea/100 + 8) * 3600
end

def poolFill
  @pool_fill = (@volume/1000) * 3600
end

def endDate
  date = (@poolPaint + @poolFill).divmod(86400), 0, @startDate

  if days == 0
    date = date + (@poolPaint + @poolFill)
  else
    begin
      if date.saturday?
        date = date + 172800
      if date.sunday?
        date = date + 86400
      end
      date = date + 86400
      count = count + 1
    end until count == days

    date = date + ((@poolPaint + @poolFill) - days * 86400)
  end
  @endDate = date
end
end


def convertSec(s)
  mm, ss = s.divmod(60)
  hh, mm = mm.divmod(60)
  dd, hh = hh.divmod(24)
  return "%d days, %d hours, %d minutes and %d seconds" % [dd, hh, mm, ss]
end

def convert_sec(s)
  mm, ss = s.divmod(60)
  hh, mm = mm.divmod(60)
  dd, hh = hh.divmod(24)
  return [dd, hh, mm, ss].to_s
end

count, pools, date=0, Array.new(jobs), Array.new(jobs)
begin
  if count == 0
    date[0] = Time.now
  else
    date[count] = pools[count - 1].endDate
  end

  pools[count] = Pool.new(date[count])
  puts "Start is #{pools[count].startDate}"
  puts "Surface Area is #{pools[count].surface_area} feet squared"
  puts "Total time including painting and drying is #{convertSec(pools[count].poolPaint)}"
  puts "Water volume is #{pools[count].volume} gals"
  puts "Time to fill the pool is #{convertSec(pools[count].poolFill)}"
  puts "End time is #{pools[count].endDate}"
  count = count + 1
end until count == pools.length

pool_surface_area = Pool.new(length, width, height_shallow, height_deep)
puts "The surface area of this pool is: " + pool_surface_area.surfaceArea(length, width, height_shallow, height_deep).round(2).to_s + ' feet'

pool_volume = Pool.new(length, width, height_shallow, height_deep)
puts "The volume of this pool is: " + pool_volume.volume(length, width, height_shallow, height_deep).round(2).to_s + ' feet'
