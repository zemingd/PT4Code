ab = gets.chomp.split(' ')
a, b = ab[0].to_i, ab[1].to_i

if a >= 13 then
  puts b
elsif a >= 6
  puts b / 2
else
  puts 0
end
