n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Hash.new(0)
n.times do |i|
  b[a[i]] += 1
end
b = b.select{|k,v|v >= 2}
c = b.keys.sort.unshift([0,0]).flatten
p b
if b[c[-1]] >= 4
  puts c[-1]**2
else
  puts c[-1]*c[-2]
end