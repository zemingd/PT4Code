N = gets.to_i
A = []
5.times{
  A << gets.to_i
}

bn = A.min

puts N / bn + 4 + (N % bn == 0 ? 0 : 1)
