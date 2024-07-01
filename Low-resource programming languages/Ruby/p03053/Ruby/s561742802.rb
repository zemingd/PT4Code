def step_lines(lines, nextlines, i, j)
    if i < 0 || j < 0 || lines.size <= i || lines[i].size <= j || lines[i][j] != '.'
        return nextlines
    end
    nextlines[i][j] = "#"
    return nextlines
end

h,w = gets.split.map &:to_i
lines = []
nextlines = []
count = 0
step = 0
(1..w).each{
    line = gets.chomp
    lines << line
    nextlines << line.dup
    count += line.count('.')
}
while count > 0
    step += 1
    (0..h-1).each{|i|
        (0..w-1).each{|j|
            if lines[i][j] == "#"
                nextlines = step_lines(lines,nextlines,i-1,j)
                nextlines = step_lines(lines,nextlines,i+1,j)
                nextlines = step_lines(lines,nextlines,i,j-1)
                nextlines = step_lines(lines,nextlines,i,j+1)
            end
        }
    }
    (0..h-1).each{|i|
        (0..w-1).each{|j|
            if nextlines[i][j] == "#"
                if lines[i][j] != "#"
                    count -= 1
                end
                lines[i][j] = nextlines[i][j]
            end
        }
    }
end
puts step