N=gets.to_i
S=gets.chomp.scan(/./)
r=0
(N-1).times{|i|
    x=S[0,i+1]
    y=S[i+1,S.size]
    a=x&y
    if a.size>r
        r=a.size
    end
}
puts r
