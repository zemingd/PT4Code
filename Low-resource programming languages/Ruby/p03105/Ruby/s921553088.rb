def aa
    a,b,c = gets.chomp.split(/\s/).map{|x| x.to_i}

    #if a > c # del ww
    #    puts 0
    #    exit
    #end

    if a > b # add w
        puts 0
        exit
    end

    if a*c <= b
        puts c
        exit
    end

    puts b/a
end

aa
