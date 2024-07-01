while input = gets do
  x,y = input.chomp.split(" ").map{|x| x.to_i}
  if x==0 && y==0
    break
  end
  
  if x>y
    x,y = y,x
  end
  
  print "#{x} #{y}\n"
end
