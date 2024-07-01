n, m = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
abs = m.times.map { gets.chomp.split.map(&:to_i) }

paths = [[]] * n

abs.each do |a, b|
    paths[a-1].append(b-1)
    paths[b-1].append(a-1)
end

gs = []
paths.each_with_index do |others, i|
    h = hs[i]
    g = true
    others.uniq.each do |x|
        if hs[x] >= h
            g = false
            break
        end
    end
    gs << i if g
end

puts gs.count
