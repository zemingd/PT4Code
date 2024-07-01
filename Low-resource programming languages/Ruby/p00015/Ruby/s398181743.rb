n = gets.to_i

$<.each_line.lazy.each_slice(n) do |lines|
	sum = lines.map(&:to_i).inject(&:+)
	puts sum.to_s.size <= 80 ? sum : 'overflow'
end