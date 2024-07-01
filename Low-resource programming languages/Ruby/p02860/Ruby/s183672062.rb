# N, A, B = gets.split(" ").map(&:to_i)
N = gets.to_i
S = gets.chomp

n = N/2
s1 = S[0...n]
s2 = S[n..-1]
puts s1 == s2 ? "Yes" : "No"
