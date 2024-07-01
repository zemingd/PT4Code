(a,v)=gets.split.map(&:to_i)
(b,w)=gets.split.map(&:to_i)
t=gets.to_i

d=(a-b).abs
dx=(v-w)

if d <= dx*t
    print 'YES'
else
    print 'NO'
end
