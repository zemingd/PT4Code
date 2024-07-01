w,h,x,y = gets.split(" ").map{|n|n.to_i}
if w%2 == 0 && h%2 == 0 && [x,y] == [(w/2), (h/2)]
  puts "#{w*h/2.0} #{1}"
else
  puts "#{w*h/2.0} #{0}"
end