w = $<.gets.chomp

count = 0
$<.each_line do |line|
	break if line.chomp == 'END_OF_TEXT'
	count += line.scan(/\b#{w}\b/i).size
end

p count