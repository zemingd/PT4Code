w,h,x,y=gets.chomp.split(" ").map{|s| s.to_f}
if (2*y-h==0)^(2*x-w==0)
  puts "#{w*h/2} 0"
elsif (2*y-h==0)&&(2*x-w==0)
  puts "#{w*h/2} 1"
else
  a=(2*y-h)/(2*x-w)
  y1=y-a*x
  y2=y+a*(w-x)
  x1=x-y/a
  x2=x+(h-y)/a
  if y1<0||y1>h || y2<0||y2>h || x1<0||x1>w || x2<0||x2>w
    puts "#{w*h/2} 1"
  else
   puts "#{w*h/2} 0"
  end
end