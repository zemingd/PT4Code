n = gets.to_i
d = gets.split(" ").map(&:to_i)

d = d.combination(2).to_a
#p d

sum = []
i = 0
while i <= d.length-1
  sum.push(d[i].inject(:*))
  i += 1
end

p sum.inject(:+)