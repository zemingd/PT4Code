while true do
s=STDIN.gets
a =s.split[0].to_i
op=s.split[1]
b =s.split[2].to_i
break if op == "?"
puts sprintf("%d\n",a+b) if op == "+"
puts sprintf("%d\n",a-b) if op == "-"
puts sprintf("%d\n",a*b) if op == "*"
puts sprintf("%d\n",a/b) if op == "/"
end