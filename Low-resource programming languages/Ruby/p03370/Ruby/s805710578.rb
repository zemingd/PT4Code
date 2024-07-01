n, x = gets.chop.split.map(&:to_i)
m = []
n.times { m << gets.to_i }

count = n

sum = m.inject(:+)
count +=  (x - sum) / m.min

puts count
