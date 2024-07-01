A,B,C = `dd`.split.map{|a|a.chomp}
puts A[-1] == B[0] && B[-1] == C[0] ? "YES" : "NO"