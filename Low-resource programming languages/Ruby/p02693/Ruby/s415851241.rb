k=gets.to_i
(a,b)=gets.split.map(&:to_i)

if a <= (b/k*k)
    print 'OK'
else
    print 'NG'
end