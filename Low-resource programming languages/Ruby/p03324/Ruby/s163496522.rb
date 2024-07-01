D, N = gets.chomp.split(' ').map(&:to_i)

min = 100 ** D
answer = min * N
answer += min if N == 100

puts answer
