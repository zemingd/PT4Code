S = gets.chomp.chars.map &:to_i

arr = []
(S.size - 3).step(0, -1) do |i|
  arr << S[i] * 100 + S[i+1] * 10 + S[i+2]
end

p arr.map{ |e| (e - 753).abs }.min