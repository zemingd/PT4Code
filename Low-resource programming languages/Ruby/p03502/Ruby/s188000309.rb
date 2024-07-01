a = gets.chomp.to_i
c = a.to_s.split('').map(&:to_i)
b = 0
c.each do |n|
	b += n
end
puts a % b == 0 ? "Yes" : "No"