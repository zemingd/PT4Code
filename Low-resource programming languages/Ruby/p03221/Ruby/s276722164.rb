n, m = gets.split.map &:to_i
data = m.times.map{|i| p, y = gets.split.map(&:to_i); [i, p, y]}
h = Array.new(n+1){[]}
data.each{|a|
    h[a[1]] << a
}
d = []
h.each{|b|
    x = 1
    b.sort_by{|a| a[2]}.each{|i, p, y|
        d << [i, p, x]
        x += 1
    }
}
d.sort.each{|i, p, x|
    puts "%06d%06d" % [p, x]
}