w,h,x,y,r = gets.chomp.split.map{|x| x.to_i}

if x.between?(r, w-r) && y.between?(r, h-r)
puts "Yes"

else
puts"No"

end