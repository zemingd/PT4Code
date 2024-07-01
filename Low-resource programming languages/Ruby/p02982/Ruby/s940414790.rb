n, d = gets.split.map(&:to_i)
x = n.times.map{ gets.split.map(&:to_i) } 

count = 0
for hoge in (0...n).to_a.combination(2).to_a
    fuga = 0
    d.times{ |i| fuga += (x[hoge[0]][i] - x[hoge[1]][i]) ** 2 }
    count += 1 if (fuga ** (1/2.0))%1 == 0
end

puts count