cnt=0
obj = gets.chomp
obj = "^" + obj
word=Regexp.new(obj.,Regexp::IGONORECASE)

while line = gets
	line.split().each do |wrd|
		cnt+=1 if word === wrd
	end
end

puts cnt