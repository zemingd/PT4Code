x,y=$<.read.split.map(&:to_i)

if x<y
    if x*y>0
        puts y-x
    else
        puts (y+x).abs+1
    end
else
    if x*y>0
        puts x-y+2
    else
        puts (y+x).abs+1
    end
end