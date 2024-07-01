def solve(n, p, q)
  perms = [ *1..n ].permutation(n)
  a = perms.find_index { |perm| perm == p }
  b = perms.find_index { |perm| perm == q }
  (a - b).abs
end

n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

puts solve(n, p, q)
