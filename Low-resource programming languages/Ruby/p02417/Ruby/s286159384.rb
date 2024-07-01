s=$<.read
(?a..?z).map{|c|puts"#{c} : #{s.count c+c.upcase}"}