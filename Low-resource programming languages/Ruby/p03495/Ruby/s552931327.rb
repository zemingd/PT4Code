N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

C = Hash.new{|h, k| h[k] = 0}
A.each{|a| C[a] += 1}
cnt = C.keys.size - K
ans = 0
C.sort_by{|k, v| v}.each{|k, v|
  break if cnt <= 0
  ans += v
  cnt -= 1
}

puts ans
