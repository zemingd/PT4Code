n, k = gets.split.map(&:to_i)
d = gets.split

n.upto(10*n) do |num|
	check = 0

	num.to_s.each_char do |digit|
		if d.include?(digit) then
			check = 1
			break
		end
	end

	if check == 0 then
		print num
		exit
	end
end
