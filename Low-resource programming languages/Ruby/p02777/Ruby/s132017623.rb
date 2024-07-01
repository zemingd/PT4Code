s,t = gets.chomp.split(" ").map(&:to_s);
a,b = gets.chomp.split(" ").map(&:to_i);
u = gets.to_s

if u ==s then
	puts (a-1).to_s +" " + b.to_s
else
	puts a.to_s + " " + (b-1).to_s
end

