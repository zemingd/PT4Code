h = {}
("a".."z").each { |char| h[char] = 0 }
gets.chomp.downcase.chars do |char|
  h[char] += 1 if /[a-z]/ === char
end
h.each {|key, value| puts "#{key} : #{value}"}