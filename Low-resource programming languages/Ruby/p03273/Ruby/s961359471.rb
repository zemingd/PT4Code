h, w = gets.chop.split.map(&:to_i)

table = []
h.times { table << gets.chop.split('') }

list = []
h.times do |i|
    list << i if !table[i].include?('#')
end
list.reverse.each do |i|
    table.delete_at(i)
end

list = []
w.times do |j|
    flag = true
    table.length.times do |i|
        flag = false if table[i][j] == '#'
    end
    list << j if flag
 end
list.reverse.each do |j|
    table.length.times do |i|
        table[i].delete_at(j)
    end
end

p table