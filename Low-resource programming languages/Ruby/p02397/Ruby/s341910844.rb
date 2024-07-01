while 1 do
    x = gets.chomp.split.map(&:to_i).sort
    if x[0] == 0 && x[1] == 0
        break
    else
        puts x.join(" ")
    end
end