n, k = gets.split.map(&:to_i)

hash = {}
n.times do
  a, b = gets.split.map(&:to_i)
  hash.key?(a) ? hash[a] += b : hash[a] = b
end

hash.sort.each do |result, v|
  k -= v
  if k <= 0
    puts result
    break
  end
end