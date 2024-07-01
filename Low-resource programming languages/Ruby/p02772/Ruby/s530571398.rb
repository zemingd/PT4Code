n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

na = []
flag = 0

a.each do |i|
	if i.even?
		na << i
	end
end

na.each  do |ia|
	unless (ia % 3) == 0
			unless (ia % 5) == 0
				flag = 1
				break
			end
		end
end

if flag == 0
	puts 'APPROVED'
else
	puts 'DENIED'
end