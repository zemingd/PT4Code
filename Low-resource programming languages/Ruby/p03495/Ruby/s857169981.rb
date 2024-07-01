n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

num = Hash.new(0)
a.each {|e| num[e] += 1}
x = num.values.sort

puts x.size <= k ? 0 : x[0,x.size-k].inject(:+)