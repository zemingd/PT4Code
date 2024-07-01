N = gets.to_i
A = gets.split.map &:to_i

p A.map{|a|
  cnt = 0
  while a & 1 == 0
    a >>= 1
    cnt += 1
  end
  cnt
}.inject:+
