H,W=gets.split.map &:to_i
S=H.times.map{gets.chomp.chars}

v=Array.new(H){Array.new(W)}
h=Array.new(H){Array.new(W)}
H.times do |i|
  W.times do |j|
    v[i][j] = h[i][j] = (S[i][j]==?. ? 1 : 0)
  end
end

H.times do |i|
  1.upto(W-1) do |j|
    h[i][j] += h[i][j-1] if S[i][j]==?.
  end
  (W-1).downto(1) do |j|
    h[i][j-1] = h[i][j] if S[i][j]==?.
  end
end
W.times do |j|
  1.upto(H-1) do |i|
    v[i][j] += v[i-1][j] if S[i][j]==?.
  end
  (H-1).downto(1) do |i|
    v[i-1][j] = v[i][j] if S[i][j]==?.
  end
end

ans=0
H.times do |i|
  W.times do |j|
    ans = [ans, h[i][j]+v[i][j]-1].max if S[i][j]==?.
  end
end
p ans
