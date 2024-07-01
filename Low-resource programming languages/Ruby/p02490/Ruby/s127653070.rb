while 
 a=gets.split(" ").map{|i|i.to_i}
 if a[0] == 0 && a[1] == 0
  break
 end
  a=a.sort
  print a[0]
  for i in 1...a.length
   puts " " + a[i].to_s
  end
end 