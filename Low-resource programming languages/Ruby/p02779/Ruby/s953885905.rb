n = gets.to_i
a = gets.split.map(&:to_i)
a.uniq!

r = a.length >= n ? 'YES' : 'NO'
puts r