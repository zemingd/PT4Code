N = gets.to_i
D = gets.split.map &:to_i
ans = 0
D.combination(2){|x, y|
  ans += x * y
}
p ans