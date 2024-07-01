line = gets.chomp.chars.map(&:to_i)
first, second, third = 0, 0, 0

(1..7).each do |bit|
	first = (bit>>2 & 1 == 1 ? [1,"+"] : [-1,"-"] )
	second = (bit>>1 & 1 == 1 ? [1,"+"] : [-1,"-"] )
	third = (bit & 1 == 1 ? [1,"+"] : [-1,"-"] )

	if line[0] + line[1]*first[0] + line[2]*second[0] + line[3]*third[0] == 7
		print line[0], first[1], line[1], second[1], line[2], third[1], line[3], "=7"
		exit
	end
end

