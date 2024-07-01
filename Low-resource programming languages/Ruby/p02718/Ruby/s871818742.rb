_n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_f).sort.reverse
sum =  a.inject(:+) / 4 / m

puts a[m - 1] >= sum.ceil ? 'Yes':'No'