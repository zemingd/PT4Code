N = gets.to_i
S = gets.chomp

T = S.size / 2

puts S[0...T] * 2 == S ?  "Yes" : "No"
  