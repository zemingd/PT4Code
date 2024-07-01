A=(1..1000).each.map{|i|2.upto(10).map{|j|i**j}.flatten}.flatten.sort.uniq
X=gets.to_i
A.size.times do |i|
  next if A[i+1] <= X
  p A[i]
  break
end
