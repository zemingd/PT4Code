h = Hash.new()
("a".."z").each{|c| h[c] = 0}
(gets.chomp).gsub!(/[^a-zA-Z]/, "").downcase!.each_char{|c| h[c] += 1 }
h.each{|k,v| puts "#{k} : #{v}" }
