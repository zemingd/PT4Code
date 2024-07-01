w,h,x,y,r = gets.chomp.split(" ").map{|x| x.to_i}

if x-r < 0 || y-r < 0 || w < x+r || h < y+r
  print "No\n"
else
  print "Yes\n"
end
