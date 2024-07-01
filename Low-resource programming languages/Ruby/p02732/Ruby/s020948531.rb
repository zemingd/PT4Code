n = gets.to_i
a = gets.split.map(&:to_i)
hash = Hash.new(0)
a.each do |ar|
  hash[ar] += 1
end
arr = hash.values.to_a
unti = arr.inject(0){|sum,i| sum += (i * (i-1))} / 2
memo = Hash.new(0)
a.each do |i|
  hash[i] -= 1
  s = 0
  if memo.fetch(i,nil) == nil
    s = unti + ((hash[i] * (hash[i] - 1)) / 2) - (((hash[i] + 1) * hash[i]) / 2)
    memo[i] = s
  else
    s = memo[i]
  end
  puts s
  hash[i] += 1
end
