n = gets.to_i
a,b = gets.chomp.split(" ").map(&:to_i);

min = 0
if n < a then
	min = n
else
	min = (a/n+1) * n
end


if min < b then
	puts "OK"
else
	puts"NG"
end
