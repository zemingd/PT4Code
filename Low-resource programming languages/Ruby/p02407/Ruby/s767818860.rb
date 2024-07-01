n = gets.to_i
a = gets.chomp.split " "

a.map! do |item|
    item.to_i
end

a = a.sort.reverse!

for i in 0..n do
    print "#{a[i]} "
end
print "\b\n"