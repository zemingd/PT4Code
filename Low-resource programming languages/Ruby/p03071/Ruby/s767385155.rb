a, b = STDIN.gets.chomp.split(" ").map{|x| x.to_i}
sum = 0
if a > b
  sum += a
  a -= 1
else
  sum += b
  b -= 1
end
if a > b
  sum += a
  a -= 1
else
  sum += b
  b -= 1
end
puts sum