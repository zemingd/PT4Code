
arr = []
STDIN.gets.chomp.split(//).each do |char|
	if char == "B"
		arr.pop
	else
		arr.push char
	end
end

STDOUT.print arr.join
STDOUT.print "\n"