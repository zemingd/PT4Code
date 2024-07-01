x, op, y = gets.split
if op != "?" then
  x, y = x.to_i, y.to_i
  puts x.method(op).(y) 
end