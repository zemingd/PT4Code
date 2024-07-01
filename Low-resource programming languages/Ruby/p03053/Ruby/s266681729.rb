attrs = readlines.map(&:chomp).map(&:split)

matrix = Array.new(attrs[0][0].to_i) { Array.new(attrs[0][1].to_i)}
blacks = []
for row in 0..matrix.size-1
    for column in 0..matrix[0].size-1
        matrix[row][column] = attrs[row+1][0][column] == '#' ? 1 : 0
        blacks << [row, column] if matrix[row][column] == 1
    end
end

def create_blacks(row, col, matrix, blacks)
    if row > 0 && matrix[row-1][col] == 0
        matrix[row-1][col] = 1
        blacks << [row-1, col]
    end

    if row < matrix.size-1 && matrix[row+1][col] == 0
        matrix[row+1][col] = 1
        blacks << [row+1, col]
    end

    if col > 0 && matrix[row][col-1] == 0
        matrix[row][col-1] = 1
        blacks << [row, col-1]
    end

    if col < matrix[0].size-1 && matrix[row][col+1] == 0
        matrix[row][col+1] = 1
        blacks << [row, col+1]
    end
end

count = 0
while true
    size = blacks.size
    while size > 0
        row, col = blacks.shift
        create_blacks(row, col, matrix, blacks)
        size -= 1
    end


    if blacks.empty?
        break
    else
        count += 1
    end
end

p count