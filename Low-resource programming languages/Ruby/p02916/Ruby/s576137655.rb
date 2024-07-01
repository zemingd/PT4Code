N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)
C = gets.chomp.split(" ").map(&:to_i)

ans = 0
bef = -1
A.each{|a|
  ans += B[a - 1]
  ans += C[a - 2] if a - bef == 1
  bef = a
}

puts ans
