$stdin.each_line do |line|
	if line == "0 0\n"
		break
	else
		puts line.split.map{|e| e.to_i}.sort.join(" ")
	end
end