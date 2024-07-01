i = 0
a = gets.split.map(&:to_i)
for num in a[0]..a[1] do
	if a[2]%num == 0 then
		i += 1
	end
end
puts "#{i}"