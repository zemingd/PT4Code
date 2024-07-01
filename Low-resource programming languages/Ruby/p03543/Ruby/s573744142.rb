N = gets.split('')
if N[0..2].uniq.length == 1 || N[1..3].uniq.length == 1
    print 'Yes'
else
    print 'No'
end