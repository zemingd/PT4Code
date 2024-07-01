gets
puts gets.split.map(&:to_i).each.with_index.sort.map{|a,i|i+1}*" "