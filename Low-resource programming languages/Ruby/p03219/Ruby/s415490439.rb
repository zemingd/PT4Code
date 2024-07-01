array = STDIN.read.chomp.split().map { |x|
  x.to_i
}
p array[1] + array[1] / 2     