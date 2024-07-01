a=gets.split.map do |i|
  i = i.to_i
  i==2 ? 2 : [1,3,5,7,8,10,12].include?(i) ? 1 : 0
end
puts a.uniq.size==2 ? "No" : "Yes"
