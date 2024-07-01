N = gets.to_i
S = gets.chomp

ans = 1
1.upto(N - 1) do |i|
  ans += 1 if S[i] != S[i - 1]
end
puts ans
