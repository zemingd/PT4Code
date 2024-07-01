s=$<.read.upcase
(?A..?Z).map{|c|puts"#{c} : #{s.count c}"}