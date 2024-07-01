while true
    h, w = gets.split
    h = h.to_i;w = w.to_i;
    if h == 0 && w == 0
        break
    end
    for i in 1..h
        for j in 1..w
        print "#"
        end
        print "\n"
    end
    print "\n"
end
