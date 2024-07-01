n = gets.to_i
v = gets.split.map(&:to_i)

v1, v2 = Hash.new(0), Hash.new(0)
 
v.each_slice(2) do |a, b|
    v1[a] += 1
    v2[b] += 1
end
 
a1, a2 = v1.sort_by(&:last).reverse.take(2)
b1, b2 = v2.sort_by(&:last).reverse.take(2)

if a1[0] == b1[0] then
    puts n - [a1[1] + (b2 ? b2[1] : 0), (a2 ? a2[1] : 0) + b1[1]].max
else
    puts n - a1[1] - b1[1]
end