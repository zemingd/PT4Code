x = gets.to_i
count = (x / 11) * 2
rest = x % 11
if rest == 0
  puts count
elsif rest <= 6
  puts count + 1
else
  puts count + 2
end
