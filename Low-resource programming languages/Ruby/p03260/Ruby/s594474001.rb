a , b = gets.strip.split(' ').map(&:to_i);
ans0 = a * b;
ans1 = a * b * 2;
ans2 = a * b * 3;

if ans0 % 2 == 1 || ans1 % 2 == 1 || ans2 % 2 == 1 
	puts "YES"
	else
	puts "NO"
end


