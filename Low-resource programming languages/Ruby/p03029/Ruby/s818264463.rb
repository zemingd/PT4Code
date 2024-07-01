    aaa,ppp = gets.chomp.split(/\s/).map{|x| x.to_i}
    puts ((aaa*3+ppp)/2).floor
