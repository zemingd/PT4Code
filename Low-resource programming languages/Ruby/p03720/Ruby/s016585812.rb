N,M = gets.split.map(&:to_i)
a,b = M.times.map{gets.split.map(&:to_i)}.transpose
ans = a + b
(1..N).each do |i|
    puts ans.count(i)
end