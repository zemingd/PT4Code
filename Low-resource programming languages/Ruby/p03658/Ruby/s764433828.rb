n,k=gets.chomp.split(" ").map(&:to_i)
l=gets.chomp.split(" ").map(&:to_i)
l.sort!.reverse!
sum = 0
for i in 0...k do
	sum += l[i]
end
puts sum