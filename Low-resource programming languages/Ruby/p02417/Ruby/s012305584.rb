hash = Hash.new
('a'..'z').each do |ch|
  hash[ch] = 0
end
gets.gsub(/[^A-Za-z]/, '').downcase.each_char do |ch|
  hash[ch] += 1
end
hash.sort.each do |val|
  puts "#{val[0]} : #{val[1]}"
end