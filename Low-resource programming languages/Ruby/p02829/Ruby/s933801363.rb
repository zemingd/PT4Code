a = gets.to_i
b = gets.to_i
case a
when 1
  puts b == 2 ? 3 : 2
when 2
  puts b == 1 ? 3 : 1
else
  puts b == 1 ? 2 : 1
end
