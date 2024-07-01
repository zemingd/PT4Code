puts gets.chomp.scan(/[ATGC]+/).map{|m| m.size}.max || 0
