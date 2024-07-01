H, W = gets.split.map(&:to_i)
S = H.times.map{gets.chomp}

dph = Array.new(H+1){Array.new(W+1, 0)}
dpw = Array.new(H+1){Array.new(W+1, 0)}
(H-1).downto(0) do |i|
    (W-1).downto(0) do |j|
        if S[i][j] == '.'
            dph[i][j] = dph[i+1][j] + 1
            dpw[i][j] = dpw[i][j+1] + 1
        end
    end
end

ans = 0
H.times do |i|
    W.times do |j|
        if S[i][j] == '.'
            dph[i][j] = dph[i-1][j] if dph[i][j] < dph[i-1][j]
            dpw[i][j] = dpw[i][j-1] if dpw[i][j] < dpw[i][j-1]
            res = dph[i][j] + dpw[i][j] - 1
            ans = res if ans < res
        end
    end
end
puts ans