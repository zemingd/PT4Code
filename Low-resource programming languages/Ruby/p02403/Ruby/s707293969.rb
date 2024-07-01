loop do
    h,w = gets.split.map &:to_i

    break if (h == 0) && (w == 0)

    for height in 0...h

        for width in 0...w
            print "#"
        end

    print "\n"

    end

    print "\n"

end
