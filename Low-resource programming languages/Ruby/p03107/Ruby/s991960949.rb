s = gets.chomp
count = 0
puts "0 #{s}"
while s.sub!(/(.*)01(.*)/,'\1\2')
	count += 1
	# puts "#{count} #{s}" 
end

puts count *2