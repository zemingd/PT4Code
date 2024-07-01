w,h,x,y = gets.split(" ").map{|n|n.to_i}
if  [x,y] == [0,0] || [x,y] == [w,0] || [x,y] == [0,h] || [x,y] == [w,h] then
  puts "#{w*h/2.0} #{0}"
else  
  arr_x = [x*h,(w-x)*h]
  arr_y = [w*y,w*(h-y)]
  ans = [arr_x.min,arr_y.min].max
  if arr_x.min == arr_y.min then
    ans_zerop = 1
  else
    ans_zerop = 0
  end
  puts "#{ans} #{ans_zerop}"
end