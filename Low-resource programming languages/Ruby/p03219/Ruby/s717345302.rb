array = STDIN.read.chomp.split().map { |x|
  x.to_i
}
p array[0] + array[1] / 2