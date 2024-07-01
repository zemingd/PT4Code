n = gets.split.map(&:to_i)

if (n[0] * n[1]).even?
  puts 'Even'
else
  puts 'Odd'
end
