n = gets.to_i
ds = gets.split.map(&:to_i)
if ds.count(0) != 1
  puts 0
  exit
end
hash = Hash.new(0)
ds.each do |d|
  hash[d] += 1
end
previous = 1
ans = 1
(1..(n - 1)).each do |index|
  if hash[index] == 0
    break
  end
  ans *= previous ** hash[index]
  previous = hash[index]
  ans %= 998244353
end
puts ans
