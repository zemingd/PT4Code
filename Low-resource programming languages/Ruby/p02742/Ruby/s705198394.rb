h,w = gets.split(' ').map(&:to_i)

n = h*w
count = 0

(1..n).each do |i|

	count += 1 if i.odd?
	
end

puts count