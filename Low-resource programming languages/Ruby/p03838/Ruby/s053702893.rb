x,y = gets.split.map(&:to_i)
if x <= y
    num = [y-x,y-x.abs+1].min
else
    num=0
    if x == 0
        x+=1
        num += 1
    end
    z=x*(-1)
    if z <= y
        num += y-z+1
    else
        num+=y.abs-x.abs+1
        num+=1 if x < 0
    end
end
puts num