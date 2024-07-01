str = gets
str.downcase!
arr = str.split(/\s*/)
("a".."z").each do |i|
	c = arr.count(i)
	puts "#{i} : #{c}"
end