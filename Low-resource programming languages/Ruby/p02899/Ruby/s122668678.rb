gets
puts gets.split.map(&:to_i).each_with_index.sort_by{|x,i|x}.map{|x,i|i+1}*' '