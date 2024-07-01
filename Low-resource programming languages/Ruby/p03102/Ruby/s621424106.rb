N, M, C = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)
ans = 0
N.times{
  a = gets.chomp.split(" ").map(&:to_i)
  ans += 1 if 0 < (B.zip(a).inject(0){|r, (b, a)| r + a * b} + C)
}

puts ans
