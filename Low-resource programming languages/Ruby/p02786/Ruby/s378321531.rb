h = gets.to_i

h |= h >> 1
h |= h >> 2
h |= h >> 4
h |= h >> 8
h |= h >> 16
h |= h >> 32
h |= h >> 64
h |= h >> 128
h |= h >> 256

puts h
