def bb
    n = gets.chomp.to_i

    w = []
    for i in 1..n
        w.push(gets.chomp)
    end

    unless w.length == w.uniq.length
        puts 'No'
        exit
    end

    for i in 1..(n-1)
        unless w[i-1][-1] == w[i][0]
            puts 'No'
            exit
        end
    end

    puts 'Yes'
end

bb