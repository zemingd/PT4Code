n,x = gets.split.map(&:to_i)
arr = Array.new(n) {gets.to_i} 
puts n + (x - arr.inject(:+))/arr.min