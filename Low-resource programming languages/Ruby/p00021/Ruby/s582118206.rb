n = gets.to_i
n.times do 
   x1,y1,x2,y2,x3,y3,x4,y4 = gets.split(' ').map(&:to_i)
   p ((y2 - y1).round(5))*((x4 - x3).round(5))
   p ((y4 - y3).round(5))*((x2 - x1).round(5))
   if ((y2 - y1).round(5))*((x4 - x3).round(5)).round(10) == ((y4 - y3).round(5))*((x2 - x1).round(5)).round(10)
	  puts "YES"
   else
	  puts "NO"
   end
end