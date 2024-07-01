H, W = gets.split.map(&:to_i)
S = ""
H.times do
    S << gets
end

WW = W+1
MX = (H+1)*(W+1)
s = (H*WW).times.select{|i| S[i] == '.'}

exit

dph = Array.new(MX, 0)
dpw = Array.new(MX, 0)

s.reverse_each do |i|
    dph[i] = dph[i+WW] + 1
    dpw[i] = dpw[i+1] + 1
end

ans = 0
s.each do |i|
    dph[i+WW] = dph[i]
    dpw[i+1] = dpw[i]
    res = dph[i] + dpw[i] - 1
    ans = res if ans < res
end
puts ans