n, m=gets.split.map &:to_i
a=(1..n).map{gets.chomp.bytes.map{|e|e%2}}

q=[]
a.each_with_index do |v, i|
    v.each_with_index do |c, j|
        q << i*m+j if a[i][j]==1
    end
end

res=0
d=[-1, 0, 1, 0, -1]
while t=q.shift
    res=a[r=t/m][c=t%m]-1
    i=0
    while i<4
        nr=r+d[i]
        nc=c+d[i+=1]
        next if nr<0 || nr>=n || nc<0 || nc>=m || a[nr][nc]>0
        a[nr][nc]=a[r][c]+1
        q << nr*m+nc
    end
end

p res