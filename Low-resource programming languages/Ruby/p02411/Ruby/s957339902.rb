while true do
    m,f,r=gets.chomp.split(" ").map(&:to_i)
    break if m == -1 && f == -1 && r == -1
    if m == -1 || f == -1
        puts "F"
        next
    end
    if m+f >= 80
        puts "A"
    elsif m+f >= 65
        puts "B"
    elsif m+f >= 50
        puts "C"
    elsif m+f >= 30
        if r >= 50
            puts "C"
        else
            puts "D"
        end
    else
        puts "F"
    end
end
