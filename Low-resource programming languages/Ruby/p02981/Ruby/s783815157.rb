a = gets.split
a = a.map(&:to_i)
b = a[0]*a[1]
if b >= a[2]
    puts a[2]
else
    puts b
end