gets
a=gets.chomp.split(" ").map(&:to_i)
res=0
a.each do|num|
	res+=num-1
end
puts res