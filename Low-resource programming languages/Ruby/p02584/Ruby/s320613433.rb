x,k,d=gets.split.map(&:to_i)

n=0
if k*d<x.abs
    puts x.abs-k*d
else
    n=x.abs/d
    if (d-x.abs%d)<x.abs%d
        n+=1
    end
    if (k-n)%2==0
        puts (x.abs-n*d).abs
    else
        puts d-(x.abs-n*d).abs
    end
end
