def lscan; gets.split.map(&:to_i); end

puts lscan.uniq.size == 2 ? 'Yes' : 'No'