w, h, x, y = gets.split.map(&:to_i)
ans = w*h*1.0/2.0
dup = x+x==w && y+y==h ? 1 : 0
puts "#{ans} #{dup}"
