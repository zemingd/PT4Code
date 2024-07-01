a,b =gets.chomp.split(" ")
a=a.to_i
b=b.to_i
while a!=0 || b!=0
	ans = [a, b].sort!
	puts "#{ans[0]} #{ans[1]}"
	a,b =gets.chomp.split(" ")
	a=a.to_i
	b=b.to_i
end