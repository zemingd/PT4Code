n = gets.to_i
strs = n.times.map{ gets.chomp.to_s }
count_hash = Hash.new(0)
strs.each do |elem|
  count_hash[elem] += 1
end
print Hash[ count_hash.sort_by{ |_, v| -v } ].keys.sort
