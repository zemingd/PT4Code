N,M=gets.split.map(&:to_i)
as=gets.split.map{|e|e.to_i/2}
def hlcm(a,b)
    gc=a.gcd(b)
    pa=a/gc
    pb=b/gc
    if pa.even? || pb.even?
        return 0
    else
        return gc*pa*pb
    end
end
h=as[0]
as.each do |e|
    h=hlcm(e,h)
    if h>M
        puts 0
        return
    end
end
if h==0
    puts 0   
else
    puts (M/h+1)/2
end
