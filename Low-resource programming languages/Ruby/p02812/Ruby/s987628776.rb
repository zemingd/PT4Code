n = gets.to_i # n <= 50
a = gets.chars.take(n)

result = 0

(n - 2).times do |i|
  next unless a[i] == 'A'
  next unless a[i+1] == 'B'
  next unless a[i+2] == 'C'
  result += 1
end

puts result