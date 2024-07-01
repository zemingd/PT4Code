n = gets.to_i
ns = [*1..n]
ns_d = ns.rotate

total = 0
n.times do |i|
  total += ns[i] % ns_d[i]
end
p total