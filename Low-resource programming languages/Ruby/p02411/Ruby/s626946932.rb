while grade = gets.chomp
    m,f,r=grade.split(' ').map{|n| n.to_i}
    case
    when m == -1 && f == -1 && r == -1
        break
    when m == -1 || f == -1
        puts "F"
    when m+f >= 80
        puts "A"
    when m+f >= 65
        puts "B"
    when m+f >= 50 || (m+f>=30 && r >= 50)
        puts "C"
    when m+f >= 30
        puts "D"
    else
        puts "F"
    end
end