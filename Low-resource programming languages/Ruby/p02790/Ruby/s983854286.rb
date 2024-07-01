a, b = gets.split(" ").map(&:to_i)
f = a.times.map{|i| b.to_s}.join
g = b.times.map{|i| a.to_s}.join
res = [f,g].sort.first
puts(res)