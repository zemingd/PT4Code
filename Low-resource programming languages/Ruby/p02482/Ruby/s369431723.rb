# your code goes here
a,b=gets.chomp.split(" ").map(&:to_i)
if a<b then
	puts "a<b\n"
elsif a>b then
	puts "a>b\n"
else 
	puts "a==b\n"
end