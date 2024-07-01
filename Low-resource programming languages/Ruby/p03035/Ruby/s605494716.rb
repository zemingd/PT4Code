n,m = gets.chomp.split(" ").map{|x|x.to_i}

b=Array.new
c=Array.new

a = gets.chomp.split(" ").map{|x|x.to_i}

for i in 1..m
  b[i],c[i] = gets.chomp.split(" ").map{|x|x.to_i}
end

for i in 1..m
  a=a.sort
  for j in 0..n-1
    a[j]=c[i]
  end
end
cnt=0
for i in 1..n
  cnt=cnt+a[i]
end

puts cnt