operations = gets.strip.split('')

line = ''
operations.each do |d|
	case d
	when 'B'
		line = line[0..-2] if line != ''
	when '1', '0'
		line += d
	end
end

puts line
