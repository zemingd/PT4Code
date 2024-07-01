attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map(&:to_i)
end
N = attrs.shift[0]
L = attrs.shift

result = 0

L.combination(3){|a, b, c|
  result += 1 if a < (b + c) && b < (c + a) && c < (a + b)
}

puts result 