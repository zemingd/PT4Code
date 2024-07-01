puts readlines.map(&:chomp)[1..-1].group_by{|e| e}.values.select{|e| e.size.odd?}.size
