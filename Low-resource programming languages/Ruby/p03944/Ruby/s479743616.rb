# Here your code !
w,h,n = gets.chomp.split(" ").map{|u|u.to_i}
x = []
y = []
a = []
gx = 0
gy = 0
n.times do 
  x,y,a = gets.chomp.split(" ").map{|u|u.to_i}
  case a
  when 1 then
    gx = x if(x > gx)
  when 2 then
    w = x if(w > x)
  when 3 then
    gy = y if(y > gy)
  when 4 then
    h = y if(h > y)
  end
end
w = gx = 0 if (w < gx)
h = gy = 0 if (h < gy)

puts (w-gx)*(h-gy)
