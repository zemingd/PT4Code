s = gets.chomp.chars
sa = 114514
0.upto(s.length-3) do |i|
	ngo = (s.slice(i,3).join.to_i - 753).abs
	sa = ngo if sa > ngo
end
puts sa
