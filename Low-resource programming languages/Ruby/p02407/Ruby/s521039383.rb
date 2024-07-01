n = gets.to_i
num = gets.chomp.split.map(&:to_i)
num.reverse!

for i in 0..n
    print "#{num[i]} "
end

print "\n"