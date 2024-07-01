require 'prime'

N = gets.to_i
A = gets.split.map(&:to_i)

gcd = A[0]
listLR = [gcd]

(1...N).each do |i|
  gcd = gcd.gcd(A[i])
  listLR << gcd
end

gcd = A[-1]
listRL = []

(N - 1).downto(0) do |i|
  gcd = gcd.gcd(A[i])
  listRL.unshift(gcd)
end

v1 = listLR[-2]
v2 = listRL[1]

v3 = -1

1.upto(N - 2) do |i|
  gcd = listLR[i - 1].gcd(listRL[i + 1])
  v3 = gcd if v3 < gcd
end

puts [v1, v2, v3].max
