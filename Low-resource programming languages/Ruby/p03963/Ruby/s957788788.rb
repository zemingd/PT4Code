N, K = gets.split.map(&:to_i)
a = Array.new(N, K - 1)
a[0] += 1 
puts a.inject(:*)