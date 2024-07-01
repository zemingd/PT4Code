h = {}
("a".."z").each { |char| h[char] = 0 }
while line = gets
  line.chomp.downcase.chars do |char|
    h[char] += 1 if /[a-z]/ === char
  end
end
h.each {|key, value| puts "#{key} : #{value}"}