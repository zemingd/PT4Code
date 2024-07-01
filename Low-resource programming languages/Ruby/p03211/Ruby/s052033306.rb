S = gets.chomp.chars
ans = 753
(S.size-2).times do |i|
  n = (753 - S[i,3].join.to_i).abs
  ans = n if n < ans
end
puts ans