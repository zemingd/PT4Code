line = STDIN.gets

input = line.split(' ')

cmp = input[0].to_i - input[1].to_i

s = cmp < 0 ? "<" : cmp > 0 ? ">" : "=="

puts "a " + s + " b"