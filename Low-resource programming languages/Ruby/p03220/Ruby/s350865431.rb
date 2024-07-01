
n = STDIN.gets
t, a = STDIN.gets.chomp.split().map { |x|
  x.to_i
}
hArray = STDIN.gets.chomp.split().map { |x|
  t - x.to_i * 0.006
}

min = 100000
resultIndex = 0

hArray.each_with_index { |x, idx|
  if (a - x).abs < min then
    min = (a - x).abs
    resultIndex = idx
  end
}

p resultIndex + 1
