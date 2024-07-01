def lscan; gets.split.map(&:to_i); end

h,n = lscan

puts lscan.reduce(:+) >= h ? 'Yes' : 'No'