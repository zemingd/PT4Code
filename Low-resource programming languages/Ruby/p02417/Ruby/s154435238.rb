cs = gets.chomp.downcase.chars
cs.select! { |c| (c.ord >= 97 && c.ord <= 122) || (c.ord >= 65 && c.ord <= 90) }

h = {}
('a'..'z').each { |c| h[c]  = 0 }

cs.each { |c| h[c] += 1 }
h.keys.each { |k| puts "#{k} : #{h[k]}" }