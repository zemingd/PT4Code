if __FILE__==$0
	reads_s=lambda{|s,d|s.strip.split(d)}
	text=reads_s[gets,","]
	for i in 0..text.length-1
		print( i<text.length-1 ? text[i]+" " : text[i]+"\n")
	end
end