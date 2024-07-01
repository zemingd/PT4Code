count = gets.chomp.to_i
numbers=gets.chomp.split
no=0
count.times do |i|
	numbers[i]=numbers[i].to_i
	if numbers[i]!=i+1
		no+=1
	end
end
if no<3
	puts "YES"
else
	puts "NO"
end