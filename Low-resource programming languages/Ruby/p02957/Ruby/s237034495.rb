def aa
    a,b = gets.chomp.split(/\s/).map{|x| x.to_i}
    k = ([a,b].max - (a-b).abs / 2).abs
    if (a-k).abs == (b-k).abs
        puts k
    else
        puts 'IMPOSSIBLE'
    end
end

aa