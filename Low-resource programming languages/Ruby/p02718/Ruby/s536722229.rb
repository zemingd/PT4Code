N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

target = arr.sort.reverse[M-1]
value = arr.inject(:+) / (4 * M)

puts (target >= value)? "Yes" : "No"