n,m,l=gets.split.map(&:to_i)
a=(1..n).map{gets.split.map(&:to_i)}
b=(1..m).map{gets.split.map(&:to_i)}
c=[]
for i in 0...n
    c<<[]
    for j in 0...l
        s=0
        for k in 0...m
            s+=a[i][k]*b[k][j]
        end
        c[i]<<s
    end
end
c.each do |s|
    puts s.join(" ")
end
