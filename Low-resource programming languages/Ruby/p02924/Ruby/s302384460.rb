n = gets.to_i

l = (1..n).to_a
m = (2..n).to_a + [1]
ans = n.times.map{|i| l[i]%m[i]}.inject(:+)
puts ans