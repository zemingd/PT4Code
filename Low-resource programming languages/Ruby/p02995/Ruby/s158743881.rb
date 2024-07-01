A, B, C, D = gets.chomp.split(' ').map(&:to_i)

lcm = C.lcm(D)
primes = B - A

div_candidates = [C, D, lcm].map { |i|
  size = B - A + 1
  times = size / i
  offset = i - A % i
  times + (size%i > offset ? 1 : 0)
}

size = B - A + 1
size -= div_candidates[0]
size -= div_candidates[1]
size += div_candidates[2]

puts size
