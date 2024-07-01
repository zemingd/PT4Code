s = gets()
m = s.match(/(\d+) ([+-]) (\d+))
a = m[1].to_i
op = m[2]
b = m[3].to_i
if op == "+"
  puts a + b
else
  puts a - b
end