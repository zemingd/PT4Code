str = gets
str.downcase!
arr = str.split(/\s*/)
("a".."z").each do |i|
	c = arr.count(i).to_o
	# puts "#{i}:#{c}"
	printf("%s:%d\n",i,c)
end