def toi(a)
	b = []
	a.each do |n|
		b << n.to_i
	end
	b	
end

begin
a=gets().split
x = a[0].to_i
y = a[2].to_i
op = a[1]
case op
when "+" then
	z = x + y
	puts z
when "-" then
	z = x -y
	puts z
when "*" then
	z = x * y
	puts z
when "/" then
	z = x /y
	puts z
else
end
end while op != "?" 