n = gets.to_i
h = gets.split.map(&:to_i)
c = 0
n.times do |i|
    if h[0..i].max == h[i]
        c = c + 1
    end
end
puts c
