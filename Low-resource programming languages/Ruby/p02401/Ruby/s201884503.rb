x, op, y = gets.split
if op != "?" then
  x, y = x.to_f, y.to_f
  puts x.method(op).(y) 
end