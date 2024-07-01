w,h,x,y=gets.split.map(&:to_i)
ans1 = (w*h).to_f/2

if x == w.to_f/2 && y == h.to_f/2
  ans2=1
else
  ans2=0
end

puts "#{ans1} #{ans2}"

