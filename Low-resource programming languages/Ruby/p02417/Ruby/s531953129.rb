s = gets.strip()
keys = ('a'..'z').to_a
values = Array.new(26){0}
alpha_hash = Hash[*[keys, values].transpose.flatten]

s.chars{|c|
	if c =~ /[a-zA-Z]/
		c.downcase!
		alpha_hash[c] +=  1 
	end
}

alpha_hash.each do |key, value| 
	puts "#{key} : #{value}"
end
