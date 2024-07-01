while true
    m,f,l = gets.chomp.split.map(&:to_i)
    if m == -1 && f == -1 && l == -1
        break
    end
    sum = m + f
    if sum >= 80
        puts "A"
    elsif  sum >= 65
        puts "B"
    elsif sum >= 50 || l >= 50
        puts "C"
    elsif sum >= 30
        puts "D"
    else 
        puts "F"
    end
end