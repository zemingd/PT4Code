gets
hash = gets.split.map(&:to_i).each_with_index.reduce({}) { |ha, (n, index)| ha[index + 1] = n; ha }
puts Hash[hash.sort_by{ |_, v| v }].keys().join(' ')
