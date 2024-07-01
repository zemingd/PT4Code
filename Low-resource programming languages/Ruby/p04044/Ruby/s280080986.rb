n,l=gets.chomp.split(" ").map{|i| i.to_i}

s=Array.new()

n.times do
	s.push(gets.chomp)
end

s.sort!

s.each do |str|
	print str
end
print "\n"