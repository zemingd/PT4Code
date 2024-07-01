res = 0
arr = []

n, x = gets.split.map(&:to_i)
n.times { arr << gets.to_i }

res += n
remain = x - arr.inject(:+)

res += remain / arr.min
puts res
