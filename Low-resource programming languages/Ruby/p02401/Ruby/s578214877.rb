loop do
 a, op, b = gets.split(" ")
 a = a.to_i
 b = a.to_i
  break if op == "?"
   c = a+b if op == "+"
   c = a-b if op == "-"
   c = a*b if op == "*"
   c = a/b if op == "/"
end 
 puts c
