x, y = gets.chomp.split(' ').map(&:to_i)
while x != 0 && y != 0
    if x < y
        x=x.to_s
        y=y.to_s
        puts (x+' '+y)
    else
        x=x.to_s
        y=y.to_s
        puts (y+' '+x)
    end
    x, y = gets.chomp.split(' ').map(&:to_i)
end