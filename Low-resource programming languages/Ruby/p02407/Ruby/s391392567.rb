n = gets.strip().to_i
inputs = gets.strip().split(" ").map{|i| i.to_i}.reverse
print "#{inputs[0]}"
for i in 1..(inputs.length-1)
	print " #{inputs[i]}"
end
