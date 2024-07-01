N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

lcm = A[0]
A.each {|a| lcm = lcm.lcm(a) }
ans = M / lcm
ans += 1 if lcm / 2 <= M % lcm
puts ans
