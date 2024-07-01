x = gets.chomp.to_i
m = 100
i = 0

loop do
  i = i + 1;
  m += m / 100
  break if m > x
end

puts i


