n = gets.to_i
a = gets.split.map(&:to_i)
b = {}
a.each_with_index do |a, i| 
	b[i] = a
end
b = b.sort_by{|k, v| v}
b.each do |key, value|
	print key+1
	print " "
end
