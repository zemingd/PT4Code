N, K = gets.split.map(&:to_i)
hash = Hash.new(0)

gets.split.map { |ar|
  s = ar.to_i
  hash[s] += 1
}
# p arr

hash2 = hash.sort_by{|x, y|y}
ans = 0
while hash2.size > K
  ans += hash2[0][1]
  hash2.shift
end
puts ans