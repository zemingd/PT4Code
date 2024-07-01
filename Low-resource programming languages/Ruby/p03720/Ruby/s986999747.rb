n, k = gets.split.map(&:to_i)
a = Array.new(n, 0)

k.times {
  d, f = gets.split.map(&:to_i)
  a[d-1] += 1
  a[f-1] += 1
}
puts a
