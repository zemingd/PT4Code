out = Array.new
while true
	line = gets.split(" ").map{|str|str.to_i}.sort
	break if line[0]==0 && line[1]==0
	out.push line
end

out.each{|line|
	puts line*" "
}