Main.a
n,m = gets.chomp.split(" ").map{|x|x.to_i}
l=Array.new
r=Array.new
jud=Array.new

for i in 1..m
  l[i],r[i]= gets.chomp.split(" ").map{|x|x.to_i}
end

for i in 1..m
  for j in l[i]..r[i]
    jud[j]+=1
  end
end

for i in 1..n
  cnt +=1 if jud[i]==m
end

puts cnt
