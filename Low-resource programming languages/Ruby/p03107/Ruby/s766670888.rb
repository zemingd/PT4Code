def cc
    s = gets.chomp
    l = s.length
    z = s.count('0')
    o = l - z

    puts [z, o].min * 2
end

cc
