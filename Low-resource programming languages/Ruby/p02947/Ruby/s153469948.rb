n = gets.to_i
hash = {}
for i in 1..n
  s = gets.chomp.split("").sort.join
  if hash[s]
    hash[s] += 1
  else
    hash[s] = 1
  end
end

ctn = 0
hash.values.each do |v|
  ctn += v * (v - 1) / (1 * 2)
end

puts ctn