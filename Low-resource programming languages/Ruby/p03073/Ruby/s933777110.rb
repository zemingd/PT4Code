temp = gets.chomp.rstrip
count = 0
temp.size.times do |n|
	if n % 2 == 0
		count += 1 if temp[n] == '1'
	else
		count += 1 if temp[n] == '0'
	end
end

try = temp.size - count

puts try > count ? count : try