h,g=$<.map{|e|
	h=Hash.new 0
	e.chomp.chars{|c,i|h[c]+=1}
	h.values.sort
}
puts h==g ? :Yes : :No