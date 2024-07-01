nums = STDIN.read.each_line.to_a[1].split(' ').map(&:to_i)
DIV = 10 ** 9 + 7

value = nums.combination(2).reduce(0) do |memo, (a, b)|
  memo + (a ^ b).modulo(DIV)
end.modulo(DIV)

puts value
