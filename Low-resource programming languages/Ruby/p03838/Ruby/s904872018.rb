x,y=$<.read.split.map(&:to_i)

if x*y<0
    puts (y+x).abs+1
else
    if x<y
        puts y-x
    elsif y == 0
        puts x+1
    else
        puts x-y+2
    end
end