s = gets().split(" ");
a = s[0].to_i;
b = s[1].to_i;

if a < 6
	puts(0);
elsif a >= 6 && a <= 12
	puts(b/2);
else
	puts(b);
end