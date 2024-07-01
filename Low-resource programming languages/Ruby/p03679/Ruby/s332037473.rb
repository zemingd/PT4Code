str = gets().split(" ")
x = str[0].to_i
a = str[1].to_i
b = str[2].to_i

if b - a <= 0
	puts("delicious")
elsif b - a > 0 && b - a <= x
	puts("safe")
elsif b - a > 0 && b - a > x
	puts("dangerous")
end