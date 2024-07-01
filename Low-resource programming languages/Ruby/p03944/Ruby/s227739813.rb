w,h,n = gets.chomp.split(" ").map(&:to_i)
x = n.times.map{gets.chomp.split(" ").map(&:to_i)}
a,b,c,d = 0,0,w,h
for i in 0..n-1
  if x[i][2] == 1
    a = [a,x[i][0]].max
  elsif x[i][2] == 2
    c = [c,x[i][0]].min
  elsif x[i][2] == 3
    b = [b,x[i][1]].max
  else
    d = [d,x[i][1]].min
  end
end
if c-a > 0 && d-b > 0
  puts (c-a)*(d-b)
else
  puts 0
end