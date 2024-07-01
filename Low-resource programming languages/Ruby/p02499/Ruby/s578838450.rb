require 'scanf'
#p input
alp = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
str = "sts"
i = 0
input = gets.split(".")
p input[0]
#while input[i] != "."
#end

for i in 0..25
    printf("%s : %d\n",alp[i],input[0].count(alp[i]))
end