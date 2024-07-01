irow , jcol = gets.split.map(&:to_i)
irowlist = []
table = Array.new(irow).map{Array.new(jcol,0)}

irow.times do |i|
    input = gets.to_s.chomp
    input.length.times do |j|
        table[i][j] = input.slice(j)
    end
end

for i in 0...irow do
    if table[i].all? {|w| w == '.'}
        for j in 0...jcol do
            table[i][j] = nil
        end
    end
end

for j in 0...jcol do
    work = true
    for i in 0...irow do
        if !(table[i][j] == '.' || table[i][j] == nil)
            work = false
        end
    end

    if work == true
        for i in 0...irow do
            table[i][j] = nil
        end
    end
end

for i in 0...irow do
    compactTable = table[i].compact
    if !compactTable.empty?
        puts compactTable.join("")
    end
end
