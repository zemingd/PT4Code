H, W = gets.split.map(&:to_i)
S = H.times.map{gets.chomp}

dp1 = Array.new(H+2){Array.new(W+2, 0)}
dp2 = Array.new(W+2){Array.new(H+2, 0)}
dp3 = Array.new(H+2){Array.new(W+2, 0)}
dp4 = Array.new(W+2){Array.new(H+2, 0)}
ans = 0

(H-1).downto(0) do |i|
    dp1[i] = W.times.map{|j| S[i][j] == '.' ? dp1[i+1][j] + 1 : 0}
end
(W-1).downto(0) do |j|
    dp2[j] = H.times.map{|i| S[i][j] == '.' ? dp2[j+1][i] + 1 : 0}
end
H.times do |i|
    dp3[i] = W.times.map{|j| S[i][j] == '.' ? dp3[i-1][j] + 1 : 0}
end
W.times do |j|
    dp4[j] = H.times.map{|i| S[i][j] == '.' ? dp4[j-1][i] + 1 : 0}
end
H.times do |i|
    W.times do |j|
        res = dp1[i][j] + dp2[j][i] + dp3[i][j] + dp4[j][i] - 3
        ans = res if ans < res
    end
end
puts ans