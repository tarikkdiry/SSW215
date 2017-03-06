puts "Alright, let's get this pool started"
puts "What is the length of your pool in feet?"
length = gets.to_f

puts "What is the width of your pool?"
width = gets.to_f

puts "What is the depth at that shallow end?"
height_shallow = gets.to_f

puts "What is the depth at the deep end?"
height_deep = gets.to_f


class Pool
  def initialize(length, width, height_shallow, height_deep)
    @length = length
    @width = width
    @height_shallow = height_shallow
    @height_deep = height_deep
  end
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
end



pool_surface_area = Pool.new(length, width, height_shallow, height_deep)
puts "The surface area of this pool is: " + pool_surface_area.surfaceArea(length, width, height_shallow, height_deep).round(2).to_s + ' feet'

pool_volume = Pool.new(length, width, height_shallow, height_deep)
puts "The volume of this pool is: " + pool_volume.volume(length, width, height_shallow, height_deep).round(2).to_s + ' feet'
