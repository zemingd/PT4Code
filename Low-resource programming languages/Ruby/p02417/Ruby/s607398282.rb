str = gets.downcase

('a'..'z').each do |alphabet|
	puts "#{alphabet} : #{str.count(alphabet)}"
end