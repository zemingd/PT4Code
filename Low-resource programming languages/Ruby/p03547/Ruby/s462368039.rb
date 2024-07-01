xy = gets.chomp.split
x = xy[0]
y = xy[1]
if x == y
    puts "="
else
    a = [x, y]
    a.sort!
    case a.first
    when x
        puts "<"
    else
        puts ">"
    end
end
