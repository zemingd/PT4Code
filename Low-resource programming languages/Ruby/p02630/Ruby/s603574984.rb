n = gets.to_i
a = gets.split.map(&:to_i).tally

a.default_proc = -> _, _ { 0 }

gets.to_i.times {
  b, c = gets.split.map &:to_i
  a[b], a[c] = 0, a[b] + a[c]
  puts a.sum { |k, v| k * v }
}
