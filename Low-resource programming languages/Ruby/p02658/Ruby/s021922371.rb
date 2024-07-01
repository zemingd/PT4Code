a = gets.chomp.to_i
result = 1
x = gets.chomp.split(" ").map(&:to_i)
if a != x.length
    print 0
    exit
end
x.each { |num|
    result = num * result
    }
if result < 10^18
    print -1
    exit
end
print result