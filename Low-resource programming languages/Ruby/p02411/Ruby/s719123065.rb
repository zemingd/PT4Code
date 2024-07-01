loop do
    m, f, r = gets.chomp.split.map(&:to_i)
    if m == -1 && f == -1
        break
    end
    total = m + f
    if m == -1 || f == -1
        puts "F"
    elsif total >= 80
        puts "A"
    elsif total >= 65
        puts "B"
    elsif total >= 50
        puts "C"
    elsif total < 30
        puts "F"
    elsif r >= 50 && total >= 30
        puts "C"
    elsif  r < 50 && total >=30
        puts "D"
    end
end