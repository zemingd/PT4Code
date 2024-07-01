inputs = readlines.map(&:to_i)
N = inputs.shift
min = inputs.min

puts 4 + N.quo(min).ceil
