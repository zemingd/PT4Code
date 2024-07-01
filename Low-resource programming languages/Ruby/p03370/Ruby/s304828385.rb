N, X = gets.strip.split.map(&:to_i)
a = N.times.map { gets.strip.to_i }

c = a.size
sum = X - a.inject(:+)
m = a.min

while sum > 0
  break if sum < m
  sum -= m 
  c += 1
end

puts c
