hash = {}
("a".."z").to_a.each do |c|
  hash[c] = 0
end

ARGF.each_line do |line|
  line.each_char do |c|
    dc = c.downcase
    next unless ("a".."z").to_a.join.include?(dc)
    hash[dc] += 1
  end
end

hash.each do |key, value|
  puts "#{key} : #{value}"
end