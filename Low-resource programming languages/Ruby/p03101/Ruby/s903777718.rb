def aa
    hh,ww = gets.chomp.split(/\s/).map{|x| x.to_i}
    h , w = gets.chomp.split(/\s/).map{|x| x.to_i}

    puts hh*ww - (h*ww + w*hh) + h*w
end

aa
