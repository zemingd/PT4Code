h, w = gets.split.map(&:to_i)
map = Array.new(h).map{Array.new(w)}
row = []
col = []
h.times do |i|
    str = gets.chomp
    w.times do |j|
        map[i][j] = str[j];
        if map[i][j] == "#"
            row.push(i)
            col.push(j)
        end
    end
end

h.times do |i|
    map.delete_at(h-i-1) unless row.include?(h-i-1)
end

map = map.transpose
w.times do |j|
    map.delete_at(w-j-1) unless col.include?(w-j-1)
end
map = map.transpose


map.each do |row|
    row.each do |col|
        print col
    end
    puts
end
