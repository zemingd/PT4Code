def cc
    n = gets.chomp.to_i
    aa = gets.chomp.split(/\s/).map{|x| x.to_i}.uniq#.sort

    until aa.length == 1
#        b = aa[0]
#        aa = [aa[0]] + aa[1..-1].map {|a|
        b = aa.min
        aa = aa.map {|a|
            if a == b
                a
            elsif a%b == 0
                0
            else
                c = (a-b).abs
                if c == 1
                    puts 1
                    exit
                end
                c
            end
        }
        aa.delete(0)
        aa = aa.uniq#.sort
    end

    puts aa[0]
end

cc