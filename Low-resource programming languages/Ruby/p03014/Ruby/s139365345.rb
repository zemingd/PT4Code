H, W = gets.split.map(&:to_i)
S = H.times.map{gets} + ["#"*(W+1)]

dp1 = Array.new(H+1){Array.new(W+1, 0)}
dp2 = Array.new(W+1){Array.new(H+1, 0)}
dp3 = Array.new(H+1){Array.new(W+1, 0)}
dp4 = Array.new(W+1){Array.new(H+1, 0)}
ans = 0

(H-1).downto(0) do |i|
    dp1[i] = dp1[i+1].map.with_index{|n, j| S[i][j] == '.' ? n+1 : 0}
end
(W-1).downto(0) do |j|
    dp2[j] = dp2[j+1].map.with_index{|n, i| S[i][j] == '.' ? n+1 : 0}
end
H.times do |i|
    dp3[i] = dp3[i-1].map.with_index{|n, j| S[i][j] == '.' ? n+1 : 0}
end
W.times do |j|
    dp4[j] = dp4[j-1].map.with_index{|n, i| S[i][j] == '.' ? n+1 : 0}
end
H.times do |i|
    W.times do |j|
        res = dp1[i][j] + dp2[j][i] + dp3[i][j] + dp4[j][i] - 3
        ans = res if ans < res
    end
end
puts ans