n, m = gets.split.map(&:to_i)
ds = m.times.map{gets.split.map(&:to_i)}.sort_by{|a,b|b}
res = 0
front = 1
ds.each{|a, b|
    if a >= front
        res += 1
        front = b
    end
}
p res