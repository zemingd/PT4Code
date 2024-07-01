_n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort
hash = Hash.new(0)
arr.each { |i| hash[i] += 1 }
dup_hash = hash.filter { |_, v| v != 1 }
hash.each do |j, _|
  (j * 2).step(1000001, j) { |k| hash.delete(k) }
end
dup_hash.each do |k, _|
  hash.delete(k)
end
puts hash.count