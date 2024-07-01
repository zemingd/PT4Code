n = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)

m=0
cnt=0
for i in 0..n-1
 if a[i]>=m
     m = a[i]
     cnt+=1
 end
end
puts cnt