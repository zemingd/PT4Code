while input = gets
    h, w = input.chomp.split(" ").map(&:to_i)
    
    if (h == 0) && (w == 0)
        exit
    end
    
    for i in 1..h
        for j in 1..w
            print "#"
        end
        puts ""
    end
    puts ""
end
