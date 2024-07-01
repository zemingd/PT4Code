S = gets.chomp.split("").map(&:to_s)
s_p = []
(S.length-2).times do |i|
    s_p << (753 - (S[i]+S[i+1]+S[i+2]).to_i).abs
end

p s_p.sort[0]
