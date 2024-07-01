w,h,x,y = gets.chomp.split(' ').map(&:to_i)
if (w.to_f)/2 == x && (h.to_f)/2 == y
  flag = 1
else
  flag = 0
end
puts (w.to_f * h / 2).to_s + " " + flag.to_s