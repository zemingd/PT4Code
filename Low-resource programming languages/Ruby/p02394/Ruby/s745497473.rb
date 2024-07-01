a = gets
b = a.split

w,h,x,y,r = b.map(&:to_i)
# map 要素追加　& 修飾

unless ( -100 <= x || x <= 100 ) || ( -100 <= y || y <= 100 )
  return
end

unless (0 < w || w <= 100 ) || (0 < h || h <= 100 ) || (0 < r || r <= 100 )
  return
end


if  ( (x < r) || (y < r) ) || ( ((w - x) < r) || ((h - y) < r) )
  puts "No"
else
  puts "Yes"
end
