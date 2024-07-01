S = `dd`.split[1]
puts S.size % 2 == 0 && S[0...S.size/2] == S[S.size/2..-1] ? "Yes" : "No"