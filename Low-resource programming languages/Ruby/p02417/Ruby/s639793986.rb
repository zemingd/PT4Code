counter = [0] * 26
BASE = ?A.ord

$<.each_line do |line|
	line.scan(/[a-z]/i) do |c|
		counter[c.upcase.ord - BASE] += 1
	end
end

('a'..'z').each_with_index do |c, i|
	puts "#{c} : #{counter[i]}"
end