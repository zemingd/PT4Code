eof = false
count = 1
while !eof
	input = STDIN.gets
	input = input.to_i
	if input == 0 then
		eof = true
		break
	else
		print "Case ", count, ": ", input, "\n"
		count += 1
	end
end

