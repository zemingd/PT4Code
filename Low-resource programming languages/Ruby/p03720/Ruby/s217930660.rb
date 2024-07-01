n,m=gets.split.map(&:to_i)
a=Array.new(n,0)
m.times do |i|
    x,y=gets.split.map(&:to_i)
    a[x-1]+=1
    a[y-1]+=1
end
n.times do |i|
    p a[i]
end