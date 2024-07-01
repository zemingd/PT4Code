# A, B 水 100g単位
# C, D 砂糖
# E 100g の水に溶ける砂糖の量
# F ビーカーに入る砂糖水の重さ

a, b, c, d, e, f = gets.split.map(&:to_i)
a *= 100
b *= 100

max_concentration = 0.0
ans = [0, 0]
0.upto(f/a) do |na|
  0.upto((f - a*na)/b) do |nb|
    0.upto((f - a*na - b*nb)/c) do |nc|
      0.upto((f - a*na - b*nb - c*nc)/d) do |nd|
        water = a*na + b*nb
        sugar = c*nc + d*nd
        break if water == 0 || sugar.fdiv(water) > e.fdiv(100)
        concentration = (100*sugar).fdiv(water+sugar)
        if concentration > max_concentration
          ans = [water + sugar, sugar]
          max_concentration = concentration
        end
      end
    end
  end
end

puts ans.join(' ')