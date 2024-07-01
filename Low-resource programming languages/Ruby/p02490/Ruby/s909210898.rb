a,b =gets.chomp.split(" ")
a=a.to_i
b=b.to_i
while a!=0 || b!=0
	puts "#{b} #{a}"
	a,b =gets.chomp.split(" ")
	a=a.to_i
	b=b.to_i
end