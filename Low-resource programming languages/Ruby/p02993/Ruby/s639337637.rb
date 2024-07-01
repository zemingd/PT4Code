S = gets.strip()

def check()
	(S.length - 1).times{|i|
		if S[i] == S[i + 1]
			return false
		end
	}
	return true
end

if check()
	puts "Good"
else
	puts "Bad"
end
