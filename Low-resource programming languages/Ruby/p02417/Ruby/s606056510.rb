
str = gets.chomp.split("")

hash = {}
("a".."z").each do |str|
  hash[str] = 0
end

str.each do |val|
  hash.each do |val2, size|
    if val2 == val.downcase
      hash[val2] += 1
    end
  end
end

hash.each do |key, value|
  puts "#{key} : #{value}"
end