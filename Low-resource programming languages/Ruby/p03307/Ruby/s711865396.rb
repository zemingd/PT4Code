def aa
    n = gets.chomp.to_i

    if n%2 == 0
        puts n
        exit
    end

    if n == 1
        puts 2
        exit
    end

    puts n*2
end

aa
