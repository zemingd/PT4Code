h,w = gets.split.map(&:to_i)

r = 0
c = [true] * w
a = []
h.times do
    s = gets.chomp
    next if s == '.' * w
    w.times do |i|
        c[i] = false if s[i] == '#' 
    end
    a.push(s)
    r += 1
end

r.times do |i|
    w.times do |j|
        next if c[j]
        print a[i][j]
    end
    print "\n"
end
        
