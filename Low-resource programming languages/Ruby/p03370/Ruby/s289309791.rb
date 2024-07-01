N, X = gets.strip.split.map(&:to_i)
array = []
N.times { array << gets.strip.to_i }

leftover = X - array.reduce(:+)
min = array.min
puts array.length + (leftover / min)