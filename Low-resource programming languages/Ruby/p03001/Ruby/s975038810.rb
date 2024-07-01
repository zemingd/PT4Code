io = STDIN
w,h,x,y=io.gets.split.map(&:to_i)
if x==0 || x==w || y ==0 || y==h
  if x>0 && x<w ||
     y>0 && y<h
     mult=1
  else
     mult=0
  end
  puts "#{h*w/2.to_f} #{mult}"
else
  if [(w-x)*h,x*h].min ==  [(h-y)*w, y*w].min
    mult=1
  else
    mult=0
  end
  area= [[x,w-x].min*h ,[y,h-y].min*w].max
  puts "#{area.to_f} #{mult}"
end
