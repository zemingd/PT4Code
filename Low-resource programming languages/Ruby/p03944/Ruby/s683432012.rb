w,h,n = gets.split.map(&:to_i)
minx = miny = 0
maxx = w
maxy = h
n.times do
  x,y,a = gets.split.map(&:to_i)
  case a
  when 1
    minx = [x,minx].max
  when 2
    maxx = [x,maxx].min
  when 3
    miny = [y,miny].max
  when 4
    maxy = [y,maxy].min
  end
end

if minx >= maxx || miny >= maxy
    puts 0
else
    puts (maxx-minx)*(maxy-miny)
end