H, W = gets.split.map(&:to_i)
S = H.times.map{
    s = gets.chomp
    W.times.map{|i| s[i] == '.'}
}

dp1 = Array.new(H+2){Array.new(W+2, 0)}
dp2 = Array.new(H+2){Array.new(W+2, 0)}
dp3 = Array.new(H+2){Array.new(W+2, 0)}
dp4 = Array.new(H+2){Array.new(W+2, 0)}
ans = 0
exit
(H-1).downto(0) do |i|
    (W-1).downto(0) do |j|
        if S[i][j]
            dp3[i][j] = dp3[i+1][j] + 1
            dp4[i][j] = dp4[i][j+1] + 1
        end
    end
end
H.times do |i|
    W.times do |j|
        if S[i][j]
            dp1[i][j] = dp1[i-1][j] + 1
            dp2[i][j] = dp2[i][j-1] + 1
            res = dp1[i][j] + dp2[i][j] + dp3[i][j] + dp4[i][j] - 3
            ans = res if ans < res
        end
    end
end
puts ans