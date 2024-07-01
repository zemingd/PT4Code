as = readlines.map(&:to_i)

x = as.map{|a| (a/10.0).ceil*10}.reduce(&:+) - 10
tmp = as.map{|a| a%10}; tmp.delete(0)
y = tmp.min

puts x + y