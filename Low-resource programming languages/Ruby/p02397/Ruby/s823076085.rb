loop do
	tmp = gets.split(" ").map(&:to_i)
	if tmp[0] == 0 && tmp[1] == 0
		break
	end
	puts num.sort!.join(" ")
end