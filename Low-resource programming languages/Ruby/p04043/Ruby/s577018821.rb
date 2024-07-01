s = gets().split().map(&:to_i)

five, seven = 0, 0
3.times do |i|
	if s[i] == 5
		five += 1
	elsif s[i] == 7
		seven += 1
	end
end

if five == 2 && seven == 1
	puts "YES"
else
	puts "NO"
end