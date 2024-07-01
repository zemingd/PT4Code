s,t = gets.chomp.split(" ").map(&:to_s);
a,b = gets.chomp.split(" ").map(&:to_i);
u = gets.to_s.chomp

if u == s then
	a = a-1
	puts (a.to_s)+" "+(b.to_s)
else
	b = b-1
	puts (a.to_s)+ " " +(b.to_s)
end

