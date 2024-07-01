str = $<.read.downcase
("a".."z").each{|c| puts "#{c} : #{str.count(c)}"}