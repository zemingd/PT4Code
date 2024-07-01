# 130 B
W, H, x, y = gets.strip.split.map(&:to_i)

def chmax(a, b) a > b ? a : b end

a1 = (W / 2) * H
a2 = W * (H / 2) 

puts "#{chmax(a1, a2)}.000000 #{a1.eql?(a2) ? 1 : 0}"
