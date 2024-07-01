n = gets.to_i
a=$<.map{|e|e.to_i}
a_g = a.group_by{|i|i}
count = 0
a_g.each do |k,v|
  count +=  v.length % 2
end
puts count