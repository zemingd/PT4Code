w,h,x,y = gets.split.map(&:to_i)
 
if x < (x-w).abs
  a = (x-w).abs
else
  a = x
end
 
if h-y < (y-h).abs
  b = (x-w).abs
else
  b = y
end

if w < h
  puts h * a
  puts 0
elsif w > h
  puts w * b
  puts 0 
else
  puts h * a + a / 2
  puts 1
end