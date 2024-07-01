n = gets.to_i
hash = {}
n.times do |i|
  v1, v2 = gets.chomp.split
  hash[i+1] = [v1.to_s, v2.to_i]
end
res_order = hash.values.sort{|a, b|(a[0] <=> b[0]).nonzero? || b[1] <=> a[1] }

res_order.each do |i|
  hash.each do |k, v|
    puts k if v == i
  end
end