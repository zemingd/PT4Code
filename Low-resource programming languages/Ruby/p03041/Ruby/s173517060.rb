info=gets.chomp.split(" ").map(&:to_i)
s=gets.chomp.split("")
s[info[1]-1]=s[info[1]-1].chomp.downcase
print s.join