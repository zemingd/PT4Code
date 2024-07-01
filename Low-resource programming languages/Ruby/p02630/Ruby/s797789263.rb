n = gets.to_i
hash = {}
gets.split.map(&:to_i).each do |num|
  hash[num] ||= 0
  hash[num] += 1
end

sum = 0
hash.each do |num, count|
  sum += num * count
end

q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  num = hash[b].to_i
  sum += num * (c - b)

  hash[c] ||= 0
  hash[c] += hash[b].to_i
  hash[b] = 0

  puts sum
end
