S = gets.chomp
puts S == S.reverse && S[0...S.size/2] == S[S.size/2+1..-1] ? 'Yes' : 'No'