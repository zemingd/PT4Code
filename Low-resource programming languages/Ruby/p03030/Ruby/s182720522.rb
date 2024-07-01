n = gets.to_i
li = []
lil = []
n.times do
  li << gets.chomp.split
end

lil = li.map{|a| a.join(' ')}

li = li.sort { |a,b| (a[0] <=> b[0]).nonzero? || (b[1].to_i <=> a[1].to_i)}
li = li.map{|a| a.join(' ')}

li.each do |v|
  ans = lil.index(v)
  puts ans+1
end
