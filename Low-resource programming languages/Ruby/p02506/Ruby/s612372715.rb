cnt=0
obj=gets

while(word=gets.split)
	word.each do |i|
		cnt+=1 if word =~ /#{obj}/i
	end
end

puts cnt