k = STDIN.read.to_i

num_odd = k % 2 == 0 ? k / 2 : k / 2 + 1
num_eve = k - num_odd

puts num_odd * num_eve
