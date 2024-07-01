n = gets.to_i
v = n
s = 0
10.times{|i|
  m = 10 ** (10 - i - 1)
  d = v / m
  s += d
  v -= d * m
}

puts "#{n % s == 0 ? 'Yes' : 'No'}"
