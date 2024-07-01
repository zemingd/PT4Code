hash = Hash.new(0).tap {|h| gets(nil).downcase.split(//).each {|e| h[e] += 1 }}
puts ("a".."z").map {|e| "#{e} : #{hash[e]}" }