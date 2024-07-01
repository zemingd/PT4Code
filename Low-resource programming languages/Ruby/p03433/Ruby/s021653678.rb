n, a = readlines.map(&:to_i)
b = n%500

puts b > a ? "YES" : "NO"