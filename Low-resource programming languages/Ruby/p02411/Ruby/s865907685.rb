while (m,r,f = gets.split(" ").map(&:to_i)) != [-1,-1,-1]
    if( (m == 0) or (r == 0))
        puts "F"
        elsif m + r >= 80
        puts "A"
        elsif 65 <= m + r 
        puts "B"
        elsif 50 <= m + r
        puts "C"
        elsif 30<= m + r
        puts "D" 
        if r >= 50
            puts "C"
        else 
        puts "F"
    end
    end
end