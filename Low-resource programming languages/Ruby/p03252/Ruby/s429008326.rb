puts ($<.map{|s|s.chars.map{|c|s.count c}.sort}|[])[1]?:No: :Yes