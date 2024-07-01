h=Hash.new(0)
i = STDIN.read
i.each_char{|e| h[e.downcase] += 1}
('a'..'z').each{|e| puts "#{e} : #{h[e] || 0}"}