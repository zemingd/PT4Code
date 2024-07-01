str = gets(nil)

('a'..'z').each do |alphabet|
	puts"#{alphabet} : #{str.downcase.count(alphabet)}"
end