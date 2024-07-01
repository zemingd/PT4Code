n = gets.to_i
a = gets.split.map(&:to_i)
hash = Hash.new(0)
a.each do |ar|
  hash[ar] += 1
end
memo = Hash.new(0)
a.each do |i|
  hash[i] -= 1
  s = 0
  if memo.fetch(i,nil) == nil
    hash.values.each do |j|
      s += [*(0...j)].combination(2).to_a.size
    end
    memo[i] = s
  else
    s = memo[i]
  end
  puts s
  hash[i] += 1
end
