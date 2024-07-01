gets
a = gets.split("\s").map(&:to_i)
 
print a == a.uniq ? 'YES' : 'NO'
