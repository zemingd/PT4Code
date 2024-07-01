def lscan; gets.split.map(&:to_i); end

puts gets.chomp =~ /^(hi)+$/ ? 'Yes' : 'No'