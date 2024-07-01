index = 1
loop do
  n = gets.chomp.to_i
  break if n.zero?
  puts "Case #{index}: #{n}"
  index += 1
end