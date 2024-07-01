n = gets.to_i
a = gets.split.map(&:to_i)
c = Array.new(8){false}
free = 0
a.each{|r|
    if r >= 3200
        free += 1
    else
        c[r / 400] = true
    end
}
min = c.count(true)
max = min + free
puts "%d %d" % [min, max]
