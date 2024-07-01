N, M = gets.split(' ').map(&:to_i)
L, R = [[], []]

M.times do |i|
  L[i], R[i] = gets.split(' ').map(&:to_i)
end

diff = R.min - L.max

puts diff < 0 ? 0 : diff + 1