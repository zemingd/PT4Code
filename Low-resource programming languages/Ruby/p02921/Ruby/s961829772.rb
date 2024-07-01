S = gets.chomp
T = gets.chomp

cnt = 0
0.upto(2) do |i|
  cnt += 1 if S[i] == T[i]
end
puts cnt
