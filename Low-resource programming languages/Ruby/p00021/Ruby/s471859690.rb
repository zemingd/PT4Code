def parallel?(x1, y1, x2, y2, x3, y3, x4, y4)
    a1 = (y2 - y1) / (x2 - x1) rescue Float::INFINITY
    a2 = (y4 - y3) / (x4 - x3) rescue Float::INFINITY
    return a1 == a2
end
 
$<.gets.to_i.times do
    puts parallel?(*$<.gets.split.map(&:to_r)) ? 'YES' : 'NO'
end