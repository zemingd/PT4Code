n = gets.to_i

x = gets.split.map.with_index do |e, i|
    [i, e.to_i]
end.sort_by{|e| e[1]}

mid1 = x[n/2-1][1]
mid2 = x[n/2][1]


puts (x.map.with_index do |e, i|
    e << (i < n/2 ? mid2 : mid1)
end.sort_by{|e| e[0]}.map{|e| e[2]})
