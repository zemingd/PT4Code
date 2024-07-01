A, B, X = gets.split.map(&:to_i)
if A <= X && X <= A + B
    print 'YES'
else
    print 'NO'
end