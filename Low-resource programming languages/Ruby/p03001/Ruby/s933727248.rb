w,h,x,y = gets.chomp.split.map(&:to_i)
flag = 0
if w > h
  s = [w*y,w*(h-y)].min
  if s == [h*x,h*(w-x)].min
    flag = 1
  end
else
  s = [h*x,h*(w-x)].min
  if s == [w*y,w*(h-y)].min
    flag = 1
  end
end
puts "#{s} #{flag}"