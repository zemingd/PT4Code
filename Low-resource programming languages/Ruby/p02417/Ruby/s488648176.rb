hash = Hash.new
('a'..'z').each do |ch|
  hash[ch] = 0
end
while true do
  begin
  gets.gsub(/[^A-Za-z]/, '').downcase.each_char do |ch|
    hash[ch] += 1
  end
  rescue
    break;
  end
end
hash.sort.each do |val|
  puts "#{val[0]} : #{val[1]}"
end