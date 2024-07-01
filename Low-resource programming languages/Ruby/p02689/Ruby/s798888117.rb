cnt = 0

n, m = gets.chomp.split(" ").map{|i|i.to_i}
h = gets.chomp.split(" ").map{|i|i.to_i}
a=[]; b=[]
m.times do |i|
  a[i], b[i] = gets.chomp.split(" ").map{|j|j.to_i}
end

max=Array.new(n+1, 0)
0.upto(a.size-1) do |i|
  max[a[i]] = [h[b[i]-1], max[a[i]]].max
  max[b[i]] = [h[a[i]-1], max[b[i]]].max
end
1.upto(n) do |i|
  cnt += 1 if max[i] < h[i-1]
end
puts cnt