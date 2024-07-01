while input = gets
    m, f, r = input.chomp.split(" ").map(&:to_i)
    
    if m == -1 && f == -1 && r == -1
        # 終了条件
        exit
    end
    
    if m == -1 || f == -1
        puts "F"
    elsif m + f >= 80
        puts "A"
    elsif m + f >= 65
        puts "B"
    elsif m + f >= 50
        puts "C"
    elsif m + f >= 30
        if r >= 50
            puts "C"
        else
            puts "D"
        end
    else
        puts "F"
    end
end
