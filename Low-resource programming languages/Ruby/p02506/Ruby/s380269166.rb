cnt = 0
find = gets.downcase.chomp
str = $stdin.read.gsub(/.+\Z/ , "").gsub(/[\r\n]/ , " ").downcase.split
for v in str
	if v == find
		cnt += 1
	end
end
puts cnt