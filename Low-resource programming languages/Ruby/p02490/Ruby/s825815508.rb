while line = gets.split(" ")
        x = line[0].to_i
        y = line[1].to_i
        if x == 0 && y == 0 then break end
        if x > y
                puts "#{y} #{x}"
        else
                puts "#{x} #{y}"
        end
end