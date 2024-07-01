n = gets.to_i
nums = gets.split.map(&:to_i)
q = gets.to_i
queries = []
q.times { queries << gets.split.map(&:to_i) }
sum = nums.sum
hash = Hash.new(0)
nums.each do |num|
  hash[num] += 1
end
queries.each do |a, b|
  tmp = hash[a]
  sum -= a * tmp
  hash[a] = 0
  hash[b] += tmp
  sum += b * tmp
  puts sum
end
