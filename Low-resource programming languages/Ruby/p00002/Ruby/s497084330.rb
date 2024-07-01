while nums = gets.chomp do
	a, b = nums.split.map(&:to_i)
  puts (a + b).to_s.size
end