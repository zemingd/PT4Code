a, b, c = gets.strip.split.map(&:to_i)
if (b + c - a) > 0 then
  print (b + c - a)
else
  print(0)
end