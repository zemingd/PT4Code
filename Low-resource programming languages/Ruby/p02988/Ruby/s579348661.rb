n = gets.to_i
p = gets.split.map(&:to_i)
res = 0
[*1..(n-2)].each do |i|
    s = [p[i-1], p[i], p[i+1]]
    res += 1 if p[i] != s.min && p[i] != s.max
end
puts res