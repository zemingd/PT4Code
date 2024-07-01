n = gets.to_i

a = Hash.new(0)
gets.split.each {|e| a[e.to_i] += 1}

sum = a.inject(0) {|r, (k,v)| r + k * v}

gets.to_i.times do
    b, c = gets.split.map(&:to_i)
    v = a[b]
    sum += (c - b) * v
    a[b] = 0
    a[c] += v
    p sum
end