count = 0
loop do
  n = gets.chomp.to_i
  break if n == 0

  count += 1
  puts "Case #{count}: #{n}"
end