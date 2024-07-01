n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

sum = 0
x.each do |i|
  sum += i
end

p = (sum / n.to_f).round

ans = 0
x.each do |j|
  ans += (j - p)**2
end

puts ans