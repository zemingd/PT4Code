s=gets.strip.codepoints
cnt=-2
zero="0".codepoints[0]
one="1".codepoints[0]

while true
    cnt+=2
    f=false
    for i in 0..s.size-1-1
        if s[i,2]==[zero,one] || s[i,2]==[one,zero]
            f=true
            s.slice!(i,2)
            break
        end
    end
    if !f
        puts cnt
        exit 0
    end
end
