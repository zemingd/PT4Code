n=gets.to_i
a=gets.split.map(&:to_i)
k=Array.new
for b in -(a.max)..(a.max)
kawaisa=0
for i in 0...n
    kawaisa+=(a[i]-(b+i+1)).abs
end
k.push(kawaisa)
end
p k.min