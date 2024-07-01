cnt=0
obj=gets

while(word=gets)
	cnt+=1 if word =~ /#{obj}/i
end

puts cnt