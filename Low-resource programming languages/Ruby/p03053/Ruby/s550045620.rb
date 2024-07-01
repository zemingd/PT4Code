io = STDIN
h,w = io.gets.split.map(&:to_i)
matrix = Array.new(h) do
  Array.new(w,0)
end
blacks = []
h.times do |i|
  io.gets.chomp.each_char.with_index do |c,j|
    next if c == '.'
    matrix[i][j] = 1
    blacks << [i, j]
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