A, B, C = gets.split.map &:to_i
a, b, c = *[A, B, C].sort
p c*10 + b + a