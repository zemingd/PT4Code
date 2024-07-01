h,g=$<.map{|e|
	h=Hash.new{|h,k|h[k]=[]}
	e.chomp.each_char.with_index{|c,i|h[c]<<i}
	h.values.sort
}
puts h==g ? :Yes : :No