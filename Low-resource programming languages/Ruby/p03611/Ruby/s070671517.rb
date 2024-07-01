_n = STDIN.gets
a = STDIN.gets.split.map(&:to_i)

nn = a.inject({}) {|acc, n|
  acc[n - 1] ||= 0
  acc[n] ||= 0
  acc[n + 1] ||= 0

  acc[n - 1] += 1
  acc[n] += 1
  acc[n + 1] += 1
  acc
}


puts nn.values.max
