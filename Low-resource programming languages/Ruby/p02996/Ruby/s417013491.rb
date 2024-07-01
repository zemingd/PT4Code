n=gets.chomp.to_i
y=[]
for i in 0..n-1
  y[i]=gets.chomp.split(" ").map{|s| s.to_i}
end
y.sort!{|a,b| a[1]<=>b[1]}
t=0
f=true
for i in 0..n-1
  t+=y[i][0]
  if t>y[i][1]
    f=false
    break
  end
end

if f
  puts "Yes"
else
  puts "No"
end