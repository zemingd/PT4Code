def bb
    d,n = gets.chomp.split(/\s/).map{|x| x.to_i}

    if n == 100
        case d
        when 0
            puts 101
        when 1
            puts n*101
        when 2
            puts n*100*101
        end
        exit
    end

    case d
    when 0
        puts n
    when 1
        puts n*100
    when 2
        puts n*100*100
    end
end

bb
