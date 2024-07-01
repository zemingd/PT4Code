H, W = gets.split.map(&:to_i)
row = H.times.map { gets.chomp.chars }
row.size.times do |i|
    row[i].size.times do |j|
        if row[i][j] == '#'
            if i == 0
            # 1行目
                if j == 0
                    # 左上角
                    if row[i][j+1] == '.' && row[i+1][j] == '.'
                        puts 'No'
                        exit
                    end
                elsif j == (W-1)
                    # 右上角
                    if row[i][j-1] == '.' && row[i+1][j] == '.'
                        puts 'No'
                        exit
                    end
                else
                    if row[i][j+1] == '.' && row[i][j-1] == '.' && row[i+1][j] == '.'
                        puts 'No'
                        exit
                    end
                end
            elsif i == (H-1)
            # 最終行
                if j == 0
                    # 左下角
                    if row[i][j+1] == '.' && row[i-1][j] == '.'
                        puts 'No'
                        exit
                    end
                elsif j == (W-1)
                    # 右下角
                    if row[i][j-1] == '.' && row[i-1][j] == '.'
                        puts 'No'
                        exit
                    end
                else
                    if row[i][j+1] == '.' && row[i][j-1] == '.' && row[i-1][j] == '.'
                        puts 'No'
                        exit
                    end
                end
            else
                if row[i][j+1] == '.' && row[i][j-1] == '.' && row[i+1][j] == '.' && row[i-1][j] == '.'
                    puts 'No'
                    exit
                end
            end
        end
    end
end
puts 'Yes'