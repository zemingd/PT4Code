s = gets.split('').map(&:to_s)

count = 0

s.each do |i|
	if i == 'o'
	count += 1
end
end

puts ((count*100) + 700)