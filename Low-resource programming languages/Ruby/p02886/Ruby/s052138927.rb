def bb143
    n = gets.chomp.to_i
    d = gets.chomp.split(/\s/).map{|x| x.to_i}

    puts d.combination(2).to_a.inject(0){|sum, x| sum+(x[0]*x[1])}
end

bb143