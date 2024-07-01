require 'pp'
S=gets.chomp.split('')
T=gets.chomp.split('')
hS = {}
hT = {}
for i in 0..(S.size-1)
	if(hS[S[i]].nil? && hT[T[i]].nil?)
		hS[S[i]] = T[i]
		hT[T[i]] = S[i]
	else
		if(hS[S[i]]!=T[i] || hT[T[i]]!=S[i])
			puts "No"
			exit(0)
		else
			hS[S[i]] = T[i]
			hT[T[i]] = S[i]
		end
	end
end
puts "Yes"
