n = gets.chomp.to_i
a = []
n.times { a << gets.chomp }
n = a.uniq.size
a = a.group_by(&:itself).map{|key,value| [key, value.count] }.to_h
 
num = a.max{ |x, y| x[1] <=> y[1] }[1]
 
n.times do
  if a.key(num).nil?
  	break
  else
    puts a.key(num)
  	a.delete(a.key(num))
  end
end