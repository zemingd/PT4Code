length = []
sum=0
N,K =gets.chomp.split.map(&:to_i)
length = gets.chomp.split.map(&:to_i)
length.sort!
newlength = length.reverse
for i in 0...K do
	sum += newlength[i]
end
puts sum