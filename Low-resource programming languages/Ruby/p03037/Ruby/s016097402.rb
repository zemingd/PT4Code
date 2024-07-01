N,M = gets.split(" ").map(&:to_i);
l,r = gets.split(" ").map(&:to_i);
x = [*l..r]
for i in 1..M-1
	l,r = gets.split(" ").map(&:to_i);
	y = [*l..r] & x
  	x = y
end
puts x.length