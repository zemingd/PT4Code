n = gets.to_i
a = gets.split(' ').map(&:to_i)

hash = {}
a.each do |x|
  hash[x] ||= 0
  hash[x] += 1
end

total = 0
hash.each do |key, val|
  total += val * (val - 1) / 2
end

a.each do |x|
  i1 = hash[x] * (hash[x] - 1) / 2
  i2 = (hash[x] - 1) * (hash[x] - 2) / 2
  diff = i1 - i2
  puts total - diff
end
