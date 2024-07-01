n = gets.chop.to_i
a = gets.chop.split.map { |e| e.to_i }
res = 0
a.each_with_index do |e,i|
  res += 1 if(a[0..i].min >= a[i])
end
puts res
