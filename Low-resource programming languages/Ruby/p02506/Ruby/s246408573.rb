cnt=0
obj = "^" + gets.chomp + "$"
word=Regexp.new(obj,Regexp::IGNORECASE)

while line = gets
	line.split().each do |wrd|
		cnt+=1 if word === wrd
	end
end

puts cnt