n = gets.to_i
a = gets.split.map { |s| s.to_i }
b = gets.split.map { |s| s.to_i }
c = gets.split.map { |s| s.to_i }
s = b.reduce(:+)
(0...n - 1).each { |i|
  s += c[a[i] - 1] if a[i] + 1 == a[i + 1]
}
puts s
