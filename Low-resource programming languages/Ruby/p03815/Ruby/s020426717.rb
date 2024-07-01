n = gets.to_i
if n <= 6
  puts 1
  exit
end

a = 2 * (n / 11)
b = 0
m = n % 11
if m > 0
  b = m <= 6 ? 1 : 2
end
puts a + b
