w,h,x,y=gets.chomp.split(" ").map{|s| s.to_f}
if ( (2*y-h==0)^(2*x-w==0) || ((x==0||x==w)||(y==0||y==h)) ) && (2*y-h!=2*x-w)
  puts "#{w*h/2} 0"
else
  puts "#{w*h/2} 1"
end