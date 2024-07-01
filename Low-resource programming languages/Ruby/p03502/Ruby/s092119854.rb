n = gets.to_i

ns = n.to_s.split('').map(&:to_i)
sum = 0

ns.size.times do |i|
	sum = sum + i	
end

if n % sum == 0
	puts 'Yes'
else
	puts 'No'
end