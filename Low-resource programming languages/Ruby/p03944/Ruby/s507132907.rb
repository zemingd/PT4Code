W, H, N = gets.chomp.split.map(&:to_i)
Ws = [0, W]
Hs = [0, H]  # どっちも右上

N.times do |i|
  xi, yi, ai = gets.chomp.split.map(&:to_i)
  # 題意から
  if ai == 1
    Ws[0] = [Ws[0], xi].max
  elsif ai == 2
    Ws[1] = [Ws[1], xi].min
  elsif ai == 3
    Hs[0] = [Hs[0], yi].max
  else
    Hs[1] = [Hs[1], yi].min
  end
end

puts [Ws[1] - Ws[0], 0].max * [Hs[1] - Hs[0], 0].max
