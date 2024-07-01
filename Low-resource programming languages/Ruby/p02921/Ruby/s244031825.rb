# your code goes here

s = gets.split("");
t = gets.split("");

cnt = 0;
3.times do |i|
	if (s.at(i) == t.at(i))
		cnt = cnt + 1;
	end
end
puts cnt;