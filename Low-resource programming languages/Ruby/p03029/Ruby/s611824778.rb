#set 
a,p = gets.chomp.split(" ").map(&:to_i)
p += a * 3
pie = p / 2

#main
print ("#{pie}\n")