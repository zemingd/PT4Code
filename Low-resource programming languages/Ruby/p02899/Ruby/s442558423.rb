N = gets.chomp.to_i
a = Array.new(N)
b = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
    b[a[i]-1] = i+1
end

for i in 0...N do
    print b[i]
    print " "
end
puts