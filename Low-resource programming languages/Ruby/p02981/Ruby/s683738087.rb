a = gets.split
a = a.map(&:to_i)
if a[0] * a[1] >= a[2]
    puts a[0]*a[1]
else
    puts a[2]
end