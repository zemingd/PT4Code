while true
        input = STDIN.gets.split(' ')
        h = input[0].to_i
        w = input[1].to_i

        break if (h == 0 && w == 0)

        h.times {|i|
                w.times {|j|
                        print "#"
                }
                print "\n"
        }
        print "\n"

end