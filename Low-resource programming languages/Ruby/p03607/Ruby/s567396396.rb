n = gets.to_i
a =  Array.new(n,0)
n.times do |i|
  a[i] = gets.to_i
end
a_g = a.group_by{|i|i}
count = 0
a_g.each do |k,v|
  count +=  v.length % 2
end
puts count