a, b, c=gets.split.map &:to_i
res='NO'
999.times do |i|
	x=a*i-c
	res='YES' if x>=0 && x%b==0
end
puts res
