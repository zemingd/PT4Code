n = gets.to_i
n.times{
    x1, y1, x2, y2, x3, y3, x4, y4 = gets.chomp.split.map(&:to_f)
    angle1 = (y1 - y2) / (x1 - x2)
    angle2 = (y3 - y4) / (x3 - x4)
    if angle1 == angle2
        puts "YES"
    else
        puts "NO"
    end
}