k = gets.split(" ")[1].to_i
s = gets.chomp
 
a = s.split(/(0+)/).map{|item| item.length}
if s[-1]=="0" then a.push(0) end
 
t = a[0, 2*k+1].inject(:+)
m = t
i = 2
while i+2*k < a.count
  t = t - a[i-1] - a[i-2] + a[i+2*k-1] + a[i+2*k]
  if t >= m
    m = t
  end
  i += 2
end
 
puts m