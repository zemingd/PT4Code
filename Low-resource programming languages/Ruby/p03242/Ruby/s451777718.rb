n = gets.chop.to_i
characters = n.to_s.chars 
result = ""
if !characters.empty?
	characters.each do |c|
		if c == '1'
			result = result  + '9'
		elsif c == '9'
			result = result + '1'
		end
	end
end
puts result