require "set"
def x(h, w, s)
  x = Set.new
  h.times do |i|
    w.times do |j|
      x << i if s[i].all?{|c| c == ?.}
    end
  end
  x
end
H,W=gets.split.map &:to_i
S=H.times.map{gets.chomp.chars}
T=S.transpose
h=x(H,W,S)
w=x(W,H,S.transpose)
H.times do |i|
  next if h.include?(i)
  W.times do |j|
    next if w.include?(j)
    print S[i][j]
  end
  puts
end
