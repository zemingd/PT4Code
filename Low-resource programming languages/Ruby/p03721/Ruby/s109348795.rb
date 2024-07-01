n,k = gets.to_s.split.map{|t|t.to_i}

sz = 0
n.times do
  
  a, b = gets.to_s.split
  a, b = a.to_i, b.to_i
  
  sz += b
  
  if sz >= k
    puts a
    exit
  end
end
  
  