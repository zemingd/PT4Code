n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = []
n.times do
    b << a.shift
    b.reverse!
end

for i in 0..(n-2) do
    print "#{b[i]} "
end
print "#{b[n-1]}\n"