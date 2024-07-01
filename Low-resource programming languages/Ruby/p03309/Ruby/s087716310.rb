inputs = readlines

n = inputs[0].chomp.to_i
a = inputs[1].chomp.split(' ').map { |b| b.to_i }

min = 0
max = 0
b_candidates = []
a.each_with_index { |v, i|
  b_candidates << v - (i + 1)
}

b_candidates.sort!.uniq!

results = []
b_candidates.each { |b|
  results << a.each_with_index.inject(0) { |memo, (v, i)|
    memo + (v - (b + i + 1)).abs
  }
}

p results.min