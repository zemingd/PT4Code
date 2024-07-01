S = gets.to_s
n = S.size
ansF = (753 - (S[0] + S[1] + S[2]).to_i).abs
(3..n - 2).each do |x|
  ansS = (753 - (S[x - 2] + S[x - 1] + S[x]).to_i).abs
  ansF = ansS if ansF > ansS
end
puts ansF