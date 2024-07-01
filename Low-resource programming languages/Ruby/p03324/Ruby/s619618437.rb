def bb
    d,n = gets.chomp.split(/\s/).map{|x| x.to_i}

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