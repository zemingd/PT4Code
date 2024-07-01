s = gets.chomp
t = gets.chomp




	w = Hash.new()



	s.size.times do |i|
		if s[i] != t[i]
			if w.has_key?(s[i]) && s.include?(t[i])
				tmp= t[i]
				s.gsub!(t[i], s[i])
				s[i] = tmp
				
			elsif !w.has_key?(s[i]) && s.include?(t[i])
				w[s[i]] = t[i]
				w[t[i]] = s[i]
				tmp= t[i]
				s.gsub!(t[i], s[i])
				s[i] = tmp
			else
				w[s[i]] = t[i]
				w[t[i]] = s[i]

				
				s.gsub!(s[i], t[i])
				
			end
			
		end
		if s[i] != t[i]
			puts 'No'
			exit
		end

	end



if s == t
	puts 'Yes'

end