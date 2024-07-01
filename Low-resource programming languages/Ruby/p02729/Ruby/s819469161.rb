# N = gets.chomp.to_i
N, M = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

# odd + odd => even
# even + even => even

# N. even
# M. odd
odd = M * (M-1) / 2
even = N * (N-1) / 2

p (odd + even)