A,B,C,K = $stdin.read.chomp.split(" ").map(&:to_i)

k = K
if A >= k
  puts k
  exit
end

k -= A

if B >= k
  puts A
  exit
end

k -= B

puts A - [0, k].max
