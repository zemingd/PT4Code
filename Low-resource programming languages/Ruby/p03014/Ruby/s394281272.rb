H, W = gets.split.map(&:to_i)
S = ""
H.times do
    S << gets
end

WW = W+1
MX = (H+1)*(W+1)
dph = Array.new(MX, 0)
dpw = Array.new(MX, 0)

(H*WW-1).downto(0) do |i|
    if S[i] == '.'
        dph[i] = dph[i+WW] + 1
        dpw[i] = dpw[i+1] + 1
    end
end

ans = 0
(H*WW).times do |i|
    if S[i] == '.'
        dph[i] = dph[i-WW] if dph[i] < dph[i-WW]
        dpw[i] = dpw[i-1] if dpw[i] < dpw[i-1]
        res = dph[i] + dpw[i] - 1
        ans = res if ans < res
    end
end
puts ans