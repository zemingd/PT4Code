inf = 99

n,k = gets.to_s.split.map{|t|t.to_i}

ary = []
n.times do
  
  a, b = gets.to_s.split
  a, b = a.to_i, b.to_i
  
  ary.concat([a]*b)
  
end

puts ary[k-1]