n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

sum_n = a.inject(:+)

x = 0
ans = Float::INFINITY

(n-1).times do |i|

  x += a[i]
  y = sum_n - x

  ans = [ans, (x-y).abs].min
end


p ans