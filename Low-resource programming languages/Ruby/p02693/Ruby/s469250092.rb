n = gets.to_i
a,b = gets.chomp.split(" ").map(&:to_i);

min = 0

if n == 1 then
	puts "OK"
	exit
end


if n < a then
	if a%n == 0 then
		min = (a/n) * n
	else
		min = (a/n+1) * n
	end
else
	min = n
end


if min <= b then
	puts "OK"
else
	puts"NG"
end
