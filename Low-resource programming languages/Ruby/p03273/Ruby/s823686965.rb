input = $stdin.read.split("\n")
input.shift

array = []
input.each do |row|
	array << row.gsub('.', '0').gsub('#','1').split('').map!(&:to_i)
end

array = array.reject {|row| row.inject(:+) == 0}
reversed_array = array.transpose
reversed_array = reversed_array.reject {|row| row.inject(:+) == 0}
converted_array = reversed_array.transpose

converted_array.each do |row|
	puts row.join.gsub('0', '.').gsub('1', '#')
end
