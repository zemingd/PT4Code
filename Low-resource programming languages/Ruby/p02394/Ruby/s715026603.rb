w,h,x,y,r = gets.split(' ')
w = w.to_i
h = h.to_i
x = x.to_i
y = y.to_i
r = r.to_i

if r - x < 0  then
    puts "No"
elsif  r - y < 0 then
    puts "No" 
elsif r + x > w  then 
    puts "No"
elsif r + y > h then 
    puts "No"
else 
    puts "Yes"
end 
