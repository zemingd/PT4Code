a = "a".getbyte(0)
counter = Array.new(26, 0)

eof = false

until eof do
	str = STDIN.gets
	break if str == nil
	str.chomp!
	0.upto(str.length-1) {|i|
		if str[i] =~ /[A-Z]/ then
			str[i] = str[i].downcase
		end
	
		counter[(str[i].getbyte(0) - a)] += 1 if str[i] =~ /[a-z]/
	}
end

0.upto(25) {|i|
	char = String.new()
	char << a + i
	print char, " : ", counter[i], "\n"
}
