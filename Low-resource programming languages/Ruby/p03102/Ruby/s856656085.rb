require 'matrix'
N = gets.split.map &:to_i
B = Vector.elements(gets.split.map(&:to_i), false)
ans = 0
N[0].times {
  ans += Vector.elements(gets.split.map(&:to_i), false).dot(B) + N[2] > 0 ? 1 : 0
}
p ans