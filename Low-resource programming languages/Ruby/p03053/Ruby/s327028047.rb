attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

matrix = Array.new(attrs[0][0].to_i) { Array.new(attrs[0][1].to_i)}
remainings = []
for row in 0..matrix.size-1
    for column in 0..matrix[0].size-1
        matrix[row][column] = attrs[row+1][0][column]
        remainings = [row, column] if matrix[row][column] == '.'
    end
end

def create_dark(matrix, remainings, count)
    return count if remainings.empty?

    queue = []
    for i in 0..remainings.size-1
        row, col = remainings[i]
        if row > 0
            queue << [row, col] if matrix[row-1][col] == '#'
        end

        if row < matrix.size-1
            queue << [row, col] if matrix[row+1][col] == '#'
        end

        if col > 0
            queue << [row, col] if matrix[row][col-1] == '#'
        end

        if col < matrix[0].size-1
            queue << [row, col] if matrix[row][col+1] == '#'
        end
    end

    while !queue.empty?
        row, col = queue.pop
        if row > 0
            matrix[row-1][col] = '#'
        end

        if row < matrix.size-1
            matrix[row+1][col] = '#'
        end

        if col > 0
            matrix[row][col-1] = '#'
        end

        if col < matrix[0].size-1
            matrix[row][col+1] = '#'
        end
    end

    count += 1

    create_dark(matrix, remainings, count)
end

p create_dark(matrix, remainings, 0)
