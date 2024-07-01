H, W = gets.split.map(&:to_i)
ary = H.times.map{gets.chomp.split('')}
H.times do |i|
    W.times do |j|
        if ary[i][j] == '#'
            ret = false
            [[i,j-1],[i+1,j],[i,j+1],[i-1,j]].each do |a|
                ret = true if 0 <= a[0] && a[0] < H && 0 <= a[1] && a[1] < W && ary[a[0]][a[1]] == '#'
            end
            unless ret
                puts 'No'
                exit
            end
        end
    end
end
puts 'Yes'