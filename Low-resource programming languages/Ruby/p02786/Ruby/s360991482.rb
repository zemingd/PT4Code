h = gets.to_i
digit = 0
m = 1
loop do
  digit += 1
  n = m * 2
  break if m <= h && h < n

  m = n
end
puts 2**digit - 1