def cpy(a)
  Marshal.load(Marshal.dump(a))
end

H,W=gets.split.map &:to_i
S=H.times.map{gets.chomp.chars.map{|c|c==?. ? 1 : 0}}
v=cpy(S)
h=cpy(S)
H.times do |i|
  1.upto(W-1) do |j|
    h[i][j] += h[i][j-1] unless S[i][j].zero?
  end
  (W-1).downto(1) do |j|
    h[i][j-1] = h[i][j] unless S[i][j].zero?
  end
end
W.times do |j|
  1.upto(H-1) do |i|
    v[i][j] += v[i-1][j] unless S[i][j].zero?
  end
  (H-1).downto(1) do |i|
    v[i-1][j] = v[i][j] unless S[i][j].zero?
  end
end
p H.times.map{|i|W.times.map{|j|S[i][j].zero? ? 0 : (h[i][j]+v[i][j]-1)}.max}.max
