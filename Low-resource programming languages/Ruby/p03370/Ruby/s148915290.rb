input = STDIN.gets.split(/\s/)
n = input[0].to_i
x = input[1].to_i

m = []
n.times { |i|
  m.push(STDIN.gets.to_i)
}

puts n + (x-m.sum)/m.min