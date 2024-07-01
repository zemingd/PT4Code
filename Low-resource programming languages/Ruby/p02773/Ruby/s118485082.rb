n = gets.chomp.to_i
a = []
n.times { a << gets.chomp }
 
a = a.sort.group_by(&:itself).map{|key,value| [key, value.count] }.to_h
 
num = a.max{ |x, y| x[1] <=> y[1] }[1]
 
n.times do
  puts a.key(num)
  a.delete(a.key(num))
end