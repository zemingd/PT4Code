if __FILE__ == $0 
	args = STDIN.gets.split(" ").map{|item|item.to_i}.sort
	puts "#{args[0]} #{args[1]} #{args[2]}"
end