n = gets.to_i
if n <= 6
  puts 1
  exit
end

puts 2 * (n / 11) + ((n % 11) <= 6 ? 1 : 2)
