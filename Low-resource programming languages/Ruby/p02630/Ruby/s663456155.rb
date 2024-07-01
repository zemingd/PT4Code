n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end
sum = a_arr.sum

q = gets.chomp.to_i
bc_arr = q.times.map{gets.chomp.split(" ").map(&:to_i)}

bc_arr.each do |(b, c)|
  diff = c - b
  count = hash[b].to_i

  sum = sum + diff * count
  puts sum

  hash.delete(b)
  hash[c] ||= 0
  hash[c] += count
end
