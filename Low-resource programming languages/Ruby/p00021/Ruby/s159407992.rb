num = gets.chomp.to_i
num.times do |n|
    x1, y1, x2, y2, x3, y3, x4, y4 = gets.chomp.split(" ").map(&:to_f)
    if y2 == y1 || y4 == y3
        if y2 == y1 && y4 == y3
            puts "YES"
        else
            puts "NO"
        end
        next
    elsif (x2 - x1)/(y2 - y1) == (x4 - x3)/(y4 - y3)
        puts "YES"
    else
        puts "NO"
    end
end