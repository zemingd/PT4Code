_n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort
hash = Hash.new(0)
arr.each { |i| hash[i] += 1 }
hash.filter! { |_, v| v == 1 }
max = 1000001
hash.each do |j, _|
  (j * 2).step(max, j) { |k| hash.delete(k) }
end
puts hash.count