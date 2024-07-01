w, h, x, y = gets.split.map(&:to_i)
ans = [[x, w-x].min * h, [y, h-y].min * w].max
dup = x+x==w && y+y==h ? 1 : 0
puts "#{ans} #{dup}"
