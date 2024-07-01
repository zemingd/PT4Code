N,C=gets.split.map(&:to_i)
a=[]
N.times{
    a << gets.split.map(&:to_i)
}
a.sort!
r=[]
until a.empty?
    s=a.shift
    r.size.times{|i|
        if r[i][1]<s[0]
            r[i]=s
            s=nil
            break
        end
        if r[i][1]==s[0] && r[i][2]==s[2]
            r[i][1]=s[1]
            s=nil
            break
        end
    }
    if s
        r << s
    end
end
puts r.size
