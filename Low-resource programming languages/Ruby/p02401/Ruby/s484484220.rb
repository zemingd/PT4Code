while true
a,op,b = gets.split(" ").map(&:to_i)
a = a.to_i
b = b.to_i

case op
when "+" then
	puts a+b
when "-" then
	puts a-b
when "*" then 
	puts a*b
when "/" 
	puts a/b
else break
end
end