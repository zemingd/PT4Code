N,M = gets.split.map(&:to_i)
a = Array.new
b = Array.new
for i in 0..M-1
    a[i],b[i] = gets.split.map(&:to_i)
end

for i in 0..N-1
    puts (a.count(i+1)+b.count(i+1))
end
