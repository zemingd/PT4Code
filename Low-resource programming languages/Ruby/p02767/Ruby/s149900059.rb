n = gets.to_i
xs = gets.split.map(&:to_i)
array = []
xs.each { |x| array << (x - n) ** 2 }
puts array.inject(:+)