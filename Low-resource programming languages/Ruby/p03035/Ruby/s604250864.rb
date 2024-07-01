a, b = gets.chomp.split(" ").map(&:to_i)

if a >= 13
  puts b
elsif 6 <= a && a <= 12
  puts b / 2
else
  puts 0
end
