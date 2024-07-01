w, h, x, y = gets.split.map(&:to_i)

# 横線か縦線で分割するのが最大になる

# 横線で分割
s1 = w * [h-y,y].min
# 縦線で分割
s2 = [x,w-x].min * h

puts "#{[s1,s2].max} #{s1==s2 ? 1 : 0}"