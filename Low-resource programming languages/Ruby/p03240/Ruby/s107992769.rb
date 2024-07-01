N=gets.to_i
as=N.times.map{gets.split.map(&:to_i)}
as.sort!{|a,b|-a[2]<=>b[2]}
as=as.transpose
xs,ys,hs=as[0],as[1],as[2]


for y in 0..100
    for x in 0..100
        height=hs[0]+(xs[0]-x).abs+(ys[0]-y).abs
        judge=true
        for i in 1..xs.size-1
            if height!=hs[i]+(xs[i]-x).abs+(ys[i]-y).abs && hs[i]!=0
                judge=false
                break
            end
        end
        if judge
            for i in 1..xs.size-1
                if hs[i]!=[height-(xs[i]-x).abs-(ys[i]-y).abs,0].max
                    judge=false
                    break
                end
            end
        end
        if judge
            puts [x,y,height].join(" ")
            exit 0
        end
    end
end
