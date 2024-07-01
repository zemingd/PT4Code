H, W = gets.split.map(&:to_i)
#H, W = 50, 50
ss = []
H.times do |i|
    ss[i] = gets.chomp.split('')
    #ss[i] = Array.new(W, '#')
end

H.times do |i|
    W.times do |j|
        if ss[i][j] == '#'
            success = false
            [[i-1,j], [i+1,j], [i,j+1], [i,j-1]].each do |ii, jj|
                next if ii < 0 || ii > H - 1 || jj < 0 || jj > W - 1
                if ss[ii][jj] == '#'
                    success = true
                    break
                end
            end
            if !success
                puts 'No'
                exit
            end
        end
    end
end

puts 'Yes'