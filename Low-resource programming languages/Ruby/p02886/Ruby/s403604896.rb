N = gets.to_i
ds = gets.split.map &:to_i

total = 0

ds.combination(2).each{ |a| total += a[0] * a[1] }

puts total
