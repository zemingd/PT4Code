a, b = gets.chomp.split(" ").map(&:to_i)

if a > 12
  puts b
elsif a > 6 && a < 13
  puts b/2
else
  puts 0
end