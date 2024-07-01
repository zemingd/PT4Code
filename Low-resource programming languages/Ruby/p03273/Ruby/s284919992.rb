h,w = gets.split.map(&:to_i)
a = h.times.map{gets.chomp}
yoko = []
tate = []
h.times do |i|
    yoko << i if a[i] == "."*w
end
w.times do |i|
    f = true
    h.times do |j|
        f = false if a[j][i] == "#"
    end
    tate << i if f
end

h.times do |i|
    next if yoko.include?(i)
    w.times do |j|
        next if tate.include?(j)
        print a[i][j]
    end
    puts ""
end