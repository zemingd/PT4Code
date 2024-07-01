S = gets.chomp
l = S.size
c1 = (l-1)/2
c2 = (l+3)/2-1
puts S == S.reverse && S[0,c1] == S[0,c1].reverse && S[c2,l] == S[c2, l].reverse ? "Yes" : "No"