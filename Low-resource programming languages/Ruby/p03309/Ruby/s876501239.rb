inputs = readlines

n = inputs[0].chomp.to_i
a = inputs[1].chomp.split(' ').map { |b| b.to_i }

min = 0
max = 0
a.each_with_index { |v, i|
  tmp = v - (i + 1)
  if tmp.positive?
    max = tmp if tmp.abs > max.abs
  else
    min = tmp if tmp.abs > min.abs
  end
}

b = max + min == 1 ? 0 : max + min
p a.each_with_index.inject(0) { |memo, (v, i)|
  memo + (v - (b + i + 1)).abs
}