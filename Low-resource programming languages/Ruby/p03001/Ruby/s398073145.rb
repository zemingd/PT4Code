w,h,x,y = gets.split.map(&:to_i)

area = w.to_f * h.to_f / 2.0
if w / 2 == x && h / 2 == y
  ans = 1
else
  ans = 0
end

puts "#{area} #{ans}"