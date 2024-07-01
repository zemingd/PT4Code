n,m=gets.split.map(&:to_i)
a=Array.new(m,0)
b=Array.new(m,0)
m.times do |i|
    a[i],b[i]=gets.split.map(&:to_i)
end

n.times do |i|
    puts a.count(i+1)+b.count(i+1)
end
