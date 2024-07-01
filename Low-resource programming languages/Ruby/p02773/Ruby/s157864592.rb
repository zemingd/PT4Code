counts = {}
counts.default = 0
gets.to_i.times{|i|
    counts[gets.chomp] += 1
}
m = counts.values.max

ans = []
counts.each{|key, val|
    ans.push(key) if val == m
}

ans.sort.each{|it| puts it}
