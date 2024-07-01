H,W=gets.split.map(&:to_i)
S=[]
H.times{
    S<<gets.chomp
}
r="Yes"
H.times{|h|
    W.times{|w|
        next if S[h][w]=="."
        next if w>0&&S[h][w-1]=="#"
        next if w<W-1&&S[h][w+1]=="#"
        next if h>0&&S[h-1][w]=="#"
        next if h<H-1&&S[h+1][w]=="#"
        r="No"
    }
}
puts r
