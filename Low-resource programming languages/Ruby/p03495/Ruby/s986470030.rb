n,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
n.times do |i|
  hash[a[i]] += 1
end
kind = hash.length
sortedarr = hash.each_value.sort
ans = 0
(kind-k).times do |i|
  ans += sortedarr[i]
end
puts ans
