A, B = gets.chomp.split.map(&:to_i)
if A >= 13 then
  puts B
elsif A >= 6
  puts (B / 2)
else
  puts 0
end