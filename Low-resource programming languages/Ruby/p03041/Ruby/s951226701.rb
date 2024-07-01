a = []
a = gets.split.map(&:to_i)

n = gets.chomp
x = n.chars

x[a[1]-1]=x[a[1]-1].downcase
for i in 0..a[0]-1
    print x[i]
end
print "\n"