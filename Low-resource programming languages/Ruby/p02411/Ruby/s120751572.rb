50.times{
    m,f,r = gets.split.map(&:to_i)
    if m == -1 && f == -1 && r == -1
        break
    end
sum = m + f
    if m == -1 || f == -1
        puts "F"
    elsif sum >= 80
        puts "A"
    elsif 65 <= sum && sum < 80
        puts "B"
    elsif 50 <= sum && sum < 65
        puts "C"
    elsif 30 <= sum && sum < 50 && r < 50
        puts "D"
    elsif 30 <= sum && sum < 50 && r >= 50
        puts "C"
    elsif sum < 30 
        puts "F"
    end
}

