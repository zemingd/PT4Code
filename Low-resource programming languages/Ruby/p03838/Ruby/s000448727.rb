# Here your code !
x,y=gets.chomp.split(" ").map(&:to_i)
if x<0 && y<0 && x<y
    x=x.abs
    y=y.abs
    puts x-y+2
elsif x<0 && y<0 && x>y
    x=x.abs
    y=y.abs
    puts y-x+2
elsif x>0 && y>0 && x<y
    x=x.abs
    y=y.abs
    puts y-x
elsif x>0 && y>0 && x>y
    x=x.abs
    y=y.abs
    puts x-y
elsif x<0 && y>0 && x<y
    x=x.abs
    y=y.abs
    puts x-y+1
elsif x<0 && y>0 && x>y
    x=x.abs
    y=y.abs
    puts y-x+1
elsif x>0 && y<0 && x<y
    x=x.abs
    y=y.abs
    puts y-x+1
elsif x>0 && y<0 && x>y
    x=x.abs
    y=y.abs
    puts x-y+1
end