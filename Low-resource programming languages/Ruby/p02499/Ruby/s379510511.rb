require 'scanf'
#p input
alp = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
str = ""
i = 0
#input = gets.split("")
#puts input[3]
while input = gets
	str = str + input
	if str.count(".") == 1
		break
	end
end

for i in 0...26
    printf("%s:%d\n",alp[i],str.count(alp[i]))
end