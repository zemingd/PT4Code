alpha = Hash.new
('a'..'z').each do |key|
  alpha[key] = 0
end
input = gets.downcase.split("")
input.each do |key|
  alpha[key] += 1 if alpha.key?(key)
end
('a'..'z').each do |key|
  puts "#{key} : #{alpha[key]}"
end