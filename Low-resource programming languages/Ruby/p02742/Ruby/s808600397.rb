H,W=gets.chomp.split.map(&:to_i)

# 縦
Hx = (H/2.to_f).ceil

# 幅
Wx = (W/2.to_f).ceil

# 縦横
Mx = Hx * Wx

# 中
Wxx = W/2
Hxx = H/2
Mxx = Wxx * Hxx

puts Mx + Mxx