n,l=gets.split.map(&:to_i)
ans = (1..n).map{|i| i+l-1}
min_i =400
ans.each do |i|
  if i.abs < min_i.abs
    min_i = i
  end
end
ans.delete_at(ans.index(min_i))
puts ans.inject(:+)