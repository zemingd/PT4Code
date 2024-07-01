h, w = gets.split.map(&:to_i)
s = Array.new(h) {gets.chomp.chars}

light = Array.new(h) {Array.new(w, 0)}

s.each_with_index {|row, i|
    light_row = light[i]
    count = 0
    row.each_with_index {|cell, j|
        if cell == '.' then
            light_row[j] += count
            count += 1
        else
            count = 0
        end
    }
}

s.each_with_index {|row, i|
    light_row = light[i]
    count = 0
    row.reverse.each_with_index {|cell, j|
        if cell == '.' then
            if count > 0 then
                light_row[w - j - 1] = count
            else
                count = light_row[w - j - 1]
            end
        else
            count = 0
        end
    }
}

s = s.transpose
s.each_with_index {|column, j|
    count = 0
    column.each_with_index {|cell, i|
        if cell == '.' then
            light[i][j] += count
            count += 1
        else
            count = 0
        end
    }
}

s.each_with_index {|column, j|
    count = 0
    column.reverse.each_with_index {|cell, i|
        if cell == '.' then
            light[h - i - 1][j] += count
            count += 1
        else
            count = 0
        end
    }
}

max = light.reduce(0) {|acc, row|
    val = row.reduce(0) {|acc, cell| (cell > acc) ? cell : acc}
    (val > acc) ? val : acc
}

puts(max + 1)
