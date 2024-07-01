def aa
    a1,a2,a3 = gets.chomp.split(/\s/).map{|x| x.to_i}

    o = [a1,a2,a3].sort

    puts (o[1]-o[0]).abs + (o[2]-o[1]).abs
end

aa