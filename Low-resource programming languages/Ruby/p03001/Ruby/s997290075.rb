w,h,x,y = gets.split.map &:to_i

print [[(w - x).abs, x].min * h, [(h - y).abs, y].min * w].max, " ", w == h ? 1 : 0
puts
