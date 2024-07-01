puts gets.chomp.split("").map{|c| 
	if c == "1"
		c = "9"
	elsif c == "9"
		c = "1"
	end
	c
}.join("")