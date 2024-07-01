count = Hash.new
('a'..'z').to_a.each do |c|
  count.store(c, 0)
end
while line = gets do
  line.chars do |c|
    count[c.downcase] += 1 if count.key?(c.downcase)
  end
end
count.each do |key, value|
  puts "#{key} : #{value}"
end