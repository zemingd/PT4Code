if __FILE__ == $0 
	STDIN.gets.split(" ").map{|item|item.to_i}.sort.each{|item|print item, " "}
	print "\n"
end