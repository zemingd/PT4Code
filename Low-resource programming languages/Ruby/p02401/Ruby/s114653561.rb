loop {
 a,op,b = gets.chomp.split(" ")
 a = a.to_i
 b = a.to_i
  break if op == "?"
   c = a+b if op == "+"
   c = a-b if op == "-"
   c = a*b if op == "*"
   c = a/b if op == "/"
puts c
}
