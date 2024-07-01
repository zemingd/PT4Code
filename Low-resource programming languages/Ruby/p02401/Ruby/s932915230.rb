
while true
a,op,b = gets.split(" ").map(&:to_s)
if (op == ?)
	break
end
a = a.to_i
b = b.to_i

if (op == +)
	puts a+b
elsif (op == -)
	puts a-b
elsif (op == *)
	puts a*b
elsif (op == /)
	puts a/b
end
end
		
		