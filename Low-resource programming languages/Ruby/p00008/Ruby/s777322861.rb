def answer(n)
	return 0 if n < 0 or 36 < n
	n = 36 - n if 18 < n
	return [1, 4, 10, 20, 35, 56, 84, 120, 165, 220, 282,
		348, 415, 480, 540, 592, 633, 660, 670][n]
end

$<.each_line do |line|
	p answer(line.to_i)
end