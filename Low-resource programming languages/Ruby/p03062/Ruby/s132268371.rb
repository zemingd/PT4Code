m = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
 
t = 0
u = 0
v = 0
for i in 0..a.length-1
 if a[i] > 0
     t += 1
 elsif a[i] < 0
     u += 1
 else
     v = 1
 end
end
#p t
#p u
#p v
n = 0
x = 10**9
for i in 0..a.length-1
 n += a[i].abs
 if x >=a[i].abs
     x = a[i].abs
 end
 #p x
end
#p n
#p x
if (u)%2 == 0
    puts n
elsif v > 0
    puts n
else
    puts n - 2*x
end