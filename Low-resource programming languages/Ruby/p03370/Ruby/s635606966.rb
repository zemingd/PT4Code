n,x = gets.split.map(&:to_i)
arr = n.times.map{gets.to_i}

p ((x - arr.inject(:+)) / arr.min) + n