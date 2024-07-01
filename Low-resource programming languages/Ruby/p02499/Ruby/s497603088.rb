alphabed = Hash.new
('a'..'z').to_a.each do |c|
  alphabed.store(c, 0)
end
loop
  word = gets do{
  word.chars do |c|{
    alphabed[c.downcase] += 1 if alphabed.key?(c.downcase)
  }
}
alphabed.each do |key, value|
  puts "#{key} : #{value}"
}