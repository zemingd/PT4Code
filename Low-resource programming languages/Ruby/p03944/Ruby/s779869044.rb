w,h,n = gets.chomp.split.map(&:to_i)
max_x = 0
min_x = w
max_y = 0
min_y = h

for i in 0..n-1
  x,y,a = gets.chomp.split.map(&:to_i)
  if a==1
    if max_x < x
      max_x = x
    end
  elsif a==2
    if min_x > x
      min_x = x
    end
  elsif a==3
   
    if max_y < y
      max_y = y
    end
  else
 if min_y > y
      min_y = y
    end
  end
end


ans = [(min_x-max_x),0].max * [(min_y-max_y),0].max
puts ans
