(n,m)=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
s=a.reduce(:+)
a.select {|x| x >= s / (4 * m) }

if a.size >= m
    print 'Yes'
else
    print 'No'
end