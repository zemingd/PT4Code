def ee
    s = gets.chomp
    i = 0
    n = 0
    t = gets.chomp
    t.each_char do |c|
        i = s.index(c, i)
        unless i
            i = s.index(c, 0)
            unless i
                puts -1
                exit
            end
            n += 1
        end
    end

    puts n*s.length+i+1
end

ee
