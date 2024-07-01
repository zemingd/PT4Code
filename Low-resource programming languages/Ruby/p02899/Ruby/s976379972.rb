def lscan; gets.split.map(&:to_i); end
gets
puts lscan.each_with_index.sort_by{|e, i| e}.map{|e, i| i+1}*' '