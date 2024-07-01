while line = gets.split(" ").sort
        x = line[0].to_i
        y = line[1].to_i
        if x == 0 && y == 0 then break end
        puts "#{x} #{y}"
end