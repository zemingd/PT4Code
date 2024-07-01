input = gets.split.map(&:to_i)
if input[0]*input[1] >= input[2] then
   print input[2]
else
  print input[0]*input[1]
end