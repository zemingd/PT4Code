def set_table(table, i, j)
    if i < 0 || j < 0 || table.size <= i || table[0].size <= j || table[i][j] == '#'
        return []
    end
    table[i][j] = '#'
    return [i,j]
end

h,w = gets.split.map &:to_i
table = Array.new()
black = 0
black_list = Array.new()
(0..h-1).each{|i|
    input = gets.chomp
    line = Array.new()
    (0..w-1).each{|j|
        if input[j]=='#'
            black += 1
            black_list << [i,j]
        end
        line << input[j]
    }
    table << line
}

dx = [0,0,1,-1]
dy = [1,-1,0,0]
count = 0
while black < h*w do
    tmp_black_list = [];
    black_list.each{|point|
        pi,pj = point
        (0..3).each{|idx|
            ti = pi + dx[idx]
            tj = pj + dy[idx]
            tpoint = set_table(table, ti, tj)
            if !tpoint.empty?
                black += 1;
                tmp_black_list << [tpoint[0], tpoint[1]]
            end
        }
    }
    black_list = tmp_black_list
    count += 1
end

puts count