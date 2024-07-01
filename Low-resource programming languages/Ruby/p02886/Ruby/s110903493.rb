a = gets.to_i
d = gets.split.map &:to_i

print d.combination(2).map {|arr| arr[0]*arr[1]}.reduce(:+)
