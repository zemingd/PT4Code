x,y = gets.split.map(&:to_i)
if x <= y
    if x >= 0
        num = y-x
    elsif y == x.abs
        num = 1
    elsif y >= 0
        d = y-x
        if (y*(-1)) > x
            d = [d,y*(-1)-x+1].min
        end
        if (x*(-1)) < y
            d = [d,y-x*(-1)+1].min
        end
        num = d
    else
        num = y-x
    end
else
    num=0
    z=x*(-1)
    a=y*(-1)
    if x >= 0
        if y >=0
            num = a-z+1
        elsif x < a
            num = a-x+1
        else
            num = y-z+1
        end
    else
        num = [a-x,a-z+1].min+1
    end
end
puts num