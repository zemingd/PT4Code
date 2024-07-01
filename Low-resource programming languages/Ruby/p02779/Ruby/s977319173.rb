n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

flag = 0

a.each do |i|
	if i == n
		flag = 1
		break
	end
end

if flag == 1
	puts 'NO'
else
	puts 'YES'
end