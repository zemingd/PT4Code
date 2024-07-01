nm = gets().split(" ");
n = nm[0].to_i;
m = nm[1].to_i;
l_max = 1;
r_min = n;
for i in 1..m
	s = gets.split(" ");
	l = s[0].to_i;
	r = s[1].to_i;
	if l >  l_max
		l_max = l;
	end
	if r < r_min
		r_min = r;
	end
end
ans = r_min - l_max + 1;
puts(ans);