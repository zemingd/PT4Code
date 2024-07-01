A, B = gets.chomp.split.map(&:to_i)
if A <= 5
  puts 0
elsif A <= 12
  puts B / 2
else
  puts B
end
