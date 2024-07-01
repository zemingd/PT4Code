w,h,x,y = gets.split.map(&:to_i)

area = w.to_f * h.to_f / 2.0
if x * 2 == w && y * 2 == h
  ans = 1
else
  ans = 0
end

puts "#{area} #{ans}"