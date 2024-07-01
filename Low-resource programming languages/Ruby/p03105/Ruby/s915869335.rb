a , b, c = gets.split.map(&:to_i)
if b % a == 0
  puts c
elsif b / a > 0
  puts c
else
  puts 0
end