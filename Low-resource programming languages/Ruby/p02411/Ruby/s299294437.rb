loop {
    m, f, r, = gets.split(" ").map(&:to_i)
    point = m + f
    if m & f & r == -1
        break
    end

    if m != -1 && f != -1
        if point >= 80
            puts "A"
        elsif point >= 65 && point < 80
            puts "B"
        elsif point >= 50 && point < 65
            puts "C"
        elsif r >= 50 
            puts "C"
        elsif point >= 30 && point < 50
            puts "D"
        elsif point < 30
            puts "F"
        end
    end
    puts "F"
}