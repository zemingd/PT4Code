hash = Hash.new(0).tap {|h| gets(nil).downcase.split(//).each {|e| h[e] += 1 }}
("a".."z").each {|e| puts "#{e} : #{hash[e]}" }