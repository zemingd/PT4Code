a,b = gets.split(' ').map(&:to_i)
s = gets.split('').map(&:to_s)

(0..9).each do |num|
	nums << num	
end

	a.times do |ai|
		unless nums.include?(s[ai])
			puts 'No'
			exit
		end
	end

	b.times do |bi|
		if unless nums.include?(s[a+1+bi])
			puts 'No'
			exit
		end	
	end

if s[a] == '-'
	puts 'Yes'
else
	puts 'No'
end