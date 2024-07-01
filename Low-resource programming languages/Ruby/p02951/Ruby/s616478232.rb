abc = gets.split(' ').map {|i| i.to_i}

r = abc[0] - abc[1]
ans = abc[2] - r
if ans >= 0
  puts ans
else
  puts 0
end
