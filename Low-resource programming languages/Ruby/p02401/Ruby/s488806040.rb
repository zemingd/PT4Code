
r, op, l = gets.split
a = r.to_i
b = l.to_i

while op != "?"
if op == "+"
 puts #{a + b}
elsif op == "-"
 puts #{a - b}
elsif op == "*"
 puts #{a * b}
else
 puts #{a / b}
end

r, op, l = gets.split
a = r.to_i
b = l.to_i

end
