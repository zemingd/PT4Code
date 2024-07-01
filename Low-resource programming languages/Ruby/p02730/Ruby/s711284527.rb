S = gets.chomp
P = lambda{|s|
	(s.size/2).times.all?{|i| s[i]==s[-1-i] }
}
puts(P[S]&&P[S[0,(S.size-1)/2]]&&P[S[(S.size+3)/2-1,S.size]] ? 'Yes' : 'No')
