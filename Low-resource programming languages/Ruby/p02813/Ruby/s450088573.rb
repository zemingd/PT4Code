N = gets.to_i
P = gets.chomp.split(" ").map(&:to_i)
Q = gets.chomp.split(" ").map(&:to_i)

NUM = [1, 2, 3, 4, 5, 6, 7, 8]
po = 0
qo = 0
NUM[0, N].permutation(N).each_with_index{|n, idx|
  po = idx if n == P
  qo = idx if n == Q
}

puts (po - qo).abs
