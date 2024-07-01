while line = gets.split.map(&:to_i)
    total = line[0] + line[1]

    if line[0] == -1 and line[1] == -1 and line[2]==-1
        break
    end
    if line[0] == -1 or line[1] == -1
        puts "F"
        next
    end
    if total >= 80
        puts "A"
    elsif total >= 65
        puts "B"
    elsif total >=50
        puts "C"
    elsif total >=30
        if line[2] >=50
            puts "C"
        else
            puts "D"
        end
    else
        puts "F"
    end
end
